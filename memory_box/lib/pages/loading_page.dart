import 'package:flutter/material.dart';
import 'package:memory_box/resources/custom_icons.dart';
import 'package:memory_box/resources/custom_text_styles.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DecoratedBox(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [
              0.1,
              0.3,
              0.9
            ],
                colors: [
              Color(0xff8077E4),
              Color(0xff8077E4),
              Color(0xffF1B488)
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'MemoryBox',
              style: CustomTextStyles.mainHeading,
            ),
            Padding(padding: const EdgeInsets.all(24), child: CustomIcons.mic),
          ],
        ),
      ),
    );
  }
}
