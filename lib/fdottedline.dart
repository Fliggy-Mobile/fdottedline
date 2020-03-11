import 'package:flutter/material.dart';

class FDottedLine extends StatelessWidget {
  Color color;
  double height;
  double width;
  double dottedLength = 3.0;
  double space = 2.0;

  FDottedLine({
    this.color = Colors.black,
    this.height = 1,
    this.width = double.infinity,
    this.dottedLength = 3.0,
    this.space = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, height),
      foregroundPainter: _DottedLinePainter()
        ..color = color
        ..dottedLength = dottedLength
        ..space = space,
    );
  }
}

class _DottedLinePainter extends CustomPainter {
  Color color;
  double dottedLength;
  double space;

  @override
  void paint(Canvas canvas, Size size) {
    var isHorizontal = size.width > size.height;
    final Paint paint = Paint()
      ..isAntiAlias = true
      ..filterQuality = FilterQuality.high
      ..color = color
      ..strokeWidth = (isHorizontal ? size.height : size.width);
    double count =
        (isHorizontal ? size.width : size.height) / (dottedLength + space);
    var startOffset = Offset(0, 0);
    for (int i = 0; i < count.toInt(); i++) {
      canvas.drawLine(
          startOffset,
          startOffset.translate((isHorizontal ? dottedLength : 0),
              (isHorizontal ? 0 : dottedLength)),
          paint);
      startOffset = startOffset.translate(
          (isHorizontal ? (dottedLength + space) : 0),
          (isHorizontal ? 0 : (dottedLength + space)));
    }
  }

  @override
  bool shouldRepaint(_DottedLinePainter oldDelegate) {
    return false;
  }
}
