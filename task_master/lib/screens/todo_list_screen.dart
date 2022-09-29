import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_master/resources/colors_list.dart';
import 'package:task_master/resources/styles_list.dart';
import 'package:task_master/widgets/tile_widget.dart';
import 'package:task_master/models/todo_class.dart';

class ToDoScreen extends StatefulWidget {
  const ToDoScreen({Key? key}) : super(key: key);

  @override
  State<ToDoScreen> createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  final now = DateTime.now();

  final TextEditingController _inputController = TextEditingController();
  String? inputText;
  SharedPreferences? preferences;
  List todos = [];
settingToDos() async {
  preferences = await SharedPreferences.getInstance();
  String? toDoString = preferences?.getString('todo');
  List todoList = jsonDecode(toDoString!);
  for (var element in todoList) {
    setState(() {
      todos.add(ToDo.fromJson(element));
    });
  }
}
void storeToDos(){
  List elements = todos.map((e) => e.toJson()).toList();
  preferences?.setString('todo', jsonEncode(elements));
}
@override
void initState() {
  settingToDos();
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
    _inputController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff9ed983),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Text(
              'Your tasks for today',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 36, color: Colors.white,fontWeight:
              FontWeight.w500),
            ),
          ),
          Text(DateFormat.MMMMEEEEd().format(now)),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      inputText = value;
                    });
                  },
                  cursorColor: ColorList.olive,
                  controller: _inputController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Your new task',
                    floatingLabelStyle: TextStyle(
                        color: ColorList.olive, fontWeight: FontWeight.w500),
                    enabledBorder: StylesList.inputBorder,
                    focusedBorder:  StylesList.inputBorder,
                    suffixIcon: ValueListenableBuilder<TextEditingValue>(
                      valueListenable: _inputController,
                      builder: (context, value, child) {
                        return IconButton(
                          color: ColorList.iconActive,
                          icon: const Icon(Icons.send),
                          onPressed: (value.text.isNotEmpty)
                              ? () {
                                  setState(() {
                                    todos.add(ToDo(inputText!, false));
                                  });
                                  _inputController.clear();
                                  storeToDos();
                                }
                              : null,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(40)),
            child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 5.0, color: Colors.white),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(40))),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(top: 30),
                  itemCount: todos.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Dismissible(
                      key: UniqueKey(),
                      background: Container(
                        padding: const EdgeInsets.only(right: 40),
                        alignment: Alignment.centerRight,
                        child: const Icon(Icons.delete_rounded, color: Colors.red,),
                      ),
                      direction: DismissDirection.endToStart,
                      onDismissed: (direction){
                        setState(() {
                          todos.removeAt(index);
                        });
                        storeToDos();
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        elevation: 4,
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        child: BuildListTile(data: todos[index], index: index),
                      ),
                    );
                  },
                )),
          ))
        ],
      ),
    );
  }
}

