// import 'package:flutter/material.dart';
//
// class RPSCustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//
//     Paint paintFill0 = Paint()
//       ..color = const Color.fromARGB(255, 20, 118, 189)
//       ..style = PaintingStyle.fill
//       ..strokeWidth = size.width * 0.00
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;
//
//     Path path0 = Path();
//     path0.moveTo(size.width * 0.0009815, size.height * 1.0066704);
//     path0.lineTo(size.width * 0.0008513, size.height * -0.0017976);
//     path0.lineTo(size.width * 0.6842500, size.height * 0.0016000);
//     path0.lineTo(size.width * 1.0019250, size.height * 1.0008000);
//
//     canvas.drawPath(path0, paintFill0);
//
//     // Layer 1
//
//     Paint paintStroke0 = Paint()
//       ..color = const Color.fromARGB(255, 33, 150, 243)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = size.width * 0.00
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;
//
//     canvas.drawPath(path0, paintStroke0);
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }
import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 25, 108, 186)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_0 = Path();
    path_0.moveTo(size.width*0.0009815,size.height*1.0066704);
    path_0.lineTo(size.width*0.0008513,size.height*-0.0017976);
    path_0.lineTo(size.width*0.6842500,size.height*0.0016000);
    path_0.lineTo(size.width*1.0019250,size.height*1.0008000);

    canvas.drawPath(path_0, paint_fill_0);


    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;



    canvas.drawPath(path_0, paint_stroke_0);


    // Layer 1

    Paint paint_fill_1 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_1 = Path();
    path_1.moveTo(size.width*0.6795000,size.height*0.0306000);
    path_1.lineTo(size.width*0.6848000,size.height*0.0106000);
    path_1.lineTo(size.width*0.9993250,size.height*0.9992000);
    path_1.lineTo(size.width*0.9873250,size.height*0.9955000);

    canvas.drawPath(path_1, paint_fill_1);


    // Layer 1

    Paint paint_stroke_1 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;



    canvas.drawPath(path_1, paint_stroke_1);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
