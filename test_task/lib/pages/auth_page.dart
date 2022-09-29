import 'package:flutter/material.dart';
import 'package:test_task/components/avatar_list.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xfff3f9ff),
      child: ListView(
        padding: const EdgeInsets.only(top:100),
        children: [
          Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets
          .bottom + 20),
    child: Column(
            children: const [
              Text(
                'SecuroChat',
                style: TextStyle(
                  color: Color(0xff2e2e2e),
                  fontSize: 48,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Avatar(),
              SizedBox(height: 20),
              Text('ID: 5585',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28)),
              SizedBox(
                height: 30,
              ),
              NameJob(),
              SizedBox(height: 20),
              EnterIdField()
            ],
          ),
        ),]
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 100,
      backgroundColor: Colors.transparent,
      child: SizedBox(
        child: ClipOval(
          child: Image.asset(
            AvatarList.avatars[0],
          ),
        ),
      ),
    );
  }
}

class EnterIdField extends StatelessWidget {
  const EnterIdField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: TextField(
        scrollPadding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom + 12*4),
        decoration: const InputDecoration(
          suffixIcon: Icon(Icons.send),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          labelText: 'Enter chat ID',
        ),
      ),
    );
  }
}

class NameJob extends StatelessWidget {
  final textStyle = const TextStyle(fontSize: 24);

  const NameJob({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        'Mark',
        style: textStyle,
      ),
      const SizedBox(
        width: 10,
      ),
      Text(
        'Designer',
        style: textStyle,
      )
    ]);
  }
}
