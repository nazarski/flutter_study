import 'package:flutter/material.dart';
import 'package:memory_box/resources/custom_colors.dart';
import 'package:memory_box/resources/custom_text_styles.dart';

class CustomPaintLogoWidget extends StatelessWidget {
  final String headText;
  final String? subHead;
  const CustomPaintLogoWidget({
    super.key, required this.headText, this.subHead,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CustomPaint(
          size: const Size(724, 426*0.8913043478260869), //You
          painter: RPSCustomPainter(),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(headText, style: CustomTextStyles.appHeading,),
            if (subHead != null) Text(subHead!,
              style: CustomTextStyles.appSubHeading,),
          ],
        )
      ],
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    final path_0 = Path()
    ..moveTo(size.width*-0.2062034,size.height*0.5088753)
    ..cubicTo(size.width*0.1448551,size.height*0.9881653,size.width*1.299906,
        size.height*1.127659,size.width*1.469505,size.height*0.2949404)
    ..cubicTo(size.width*1.681505,size.height*-0.7459566,size.width*-0.6644517,
        size.height*-0.1167591,size.width*-0.2062034,size.height*0.5088753)
    ..close();

    final paint0Fill = Paint()..style=PaintingStyle.fill
    ..color = CustomColors.appPurple.withOpacity(1);
    canvas.drawPath(path_0,paint0Fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
