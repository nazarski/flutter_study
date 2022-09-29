import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:memory_box/resources/custom_colors.dart';
import 'package:memory_box/resources/custom_text_styles.dart';
import 'package:memory_box/widgets/custom_paint_logo_widget.dart';

class HelloPageIfNew extends StatelessWidget {
  const HelloPageIfNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          const CustomPaintLogoWidget(headText: 'MemoryBox', subHead: 'Твій '
              'голос завжди поруч',),
          const SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Привіт!',
                style: CustomTextStyles.appMainHeading,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.8,
                child: Text(
                    'Ми раді бачити тебе тут. Цей додаток допоможе записувати '
                    "казки та тримати їх у зручному місці не заповнюючи пам'ять "
                    'на телефоні',
                    style: CustomTextStyles.appMainText,
                    textAlign: TextAlign.center),
              ),
              const SizedBox(height: 48,),
              ElevatedButton(
                onPressed: (){},
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                  ),
                  padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 20, horizontal: 100)),
                  foregroundColor: MaterialStatePropertyAll(CustomColors.appWhite),
                  backgroundColor: MaterialStatePropertyAll(CustomColors.appOrange),

                ),
                child: Text('Продовжити', style: CustomTextStyles.appButtonText,),
              )
            ],
          )
        ],
      ),
    );
  }
}
