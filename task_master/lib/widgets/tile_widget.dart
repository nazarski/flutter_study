import 'package:flutter/material.dart';
import 'package:task_master/models/todo_class.dart';

class BuildListTile extends StatefulWidget {
  final int index;
  final ToDo data;

  const BuildListTile({
    Key? key,
    required this.data,
    required this.index,
  }) : super(key: key);

  @override
  State<BuildListTile> createState() => _BuildListTileState();
}

class _BuildListTileState extends State<BuildListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        tileColor: const Color(0xffffffff),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: const Color(0xff7cb06a),
          child: Text(
            '${widget.index + 1}',
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 24),
          ),
        ),
        title: Text(widget.data.title),
        trailing: IconButton(
          icon: (widget.data.status)
              ? const Icon(
            Icons.check_box_rounded,
            color: Colors.green,
          )
              : const Icon(Icons.check_box_outline_blank_rounded),
          onPressed: () {
            setState(() {
              widget.data.status = !widget.data.status;
            });
          },
        )
    );
  }

}
