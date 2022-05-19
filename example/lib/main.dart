import 'dart:ui';

import 'package:fbutton/fbutton.dart';
import 'package:fdottedline_example/color.dart';
import 'package:fdottedline_example/part.dart';
import 'package:flutter/material.dart';
import 'package:fdottedline/fdottedline.dart';
import 'package:fsuper/fsuper.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  late AnimationController animController8;
  late Animation<double> anim8;
  bool forward = true;

  @override
  void initState() {
    animController8 = AnimationController(vsync: this);
    animController8.duration = Duration(milliseconds: 1000);
    anim8 = Tween<double>(begin: 0.0, end: 200.0).animate(
        CurvedAnimation(parent: animController8, curve: Curves.easeInOutQuint));
    animController8.addStatusListener((status) {
      if (status == AnimationStatus.forward) {
        forward = !forward;
      } else if (status == AnimationStatus.reverse) {
        forward = !forward;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: mainBackgroundColor,
      home: Scaffold(
        backgroundColor: mainBackgroundColor,
        appBar: AppBar(
          backgroundColor: mainBackgroundColor,
          title: const Text(
            'FDottedLine',
            style: TextStyle(color: mainTextTitleColor),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              buildTitle("Horizontal"),
              buildBigMargin(),

              /// demo1
              buildDemo1(),
              buildBigMargin(),
              buildTitle("Vertical"),
              buildBigMargin(),

              /// demo2
              buildDemo2(),

              buildBigMargin(),
              buildTitle("Shape"),
              buildBigMargin(),

              /// demo3
              buildDemo3(),

              buildBigMargin(),
              buildTitle("Corner"),
              buildBigMargin(),

              /// demo4
              buildDemo4(),

              buildBigMargin(),
              buildTitle("Child"),
              buildBigMargin(),

              /// demo5
              buildDemo5(),

              buildBigMargin(),

              /// demo6
              buildDemo6(),

              buildBigMargin(),
              buildTitle("More"),
              buildBigMargin(),

              /// demo7
              buildDemo7(),

              buildBigMargin(),

              buildTitle("Image"),
              buildBigMargin(),

              /// demo8
              buildDemo8(),

              buildBigMargin(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDemo1() {
    return FSuper(
      width: 200,
      height: 200,
      backgroundColor: mainBackgroundColor,
      child1: FDottedLine(
        color: mainTextSubColor,
        width: 160.0,
        strokeWidth: 2.0,
        dottedLength: 10.0,
        space: 2.0,
      ),
      child1Alignment: Alignment.center,
      shadowColor: mainShadowColor,
      shadowBlur: 5.0,
      shadowOffset: Offset(2.0, 2.0),
      corner: Corner.all(9.0),
    );
  }

  Widget buildDemo2() {
    return FSuper(
      width: 200,
      height: 200,
      backgroundColor: mainBackgroundColor,
      child1: FDottedLine(
        color: mainTextSubColor,
        height: 160.0,
        strokeWidth: 2.0,
        dottedLength: 10.0,
        space: 2.0,
      ),
      child1Alignment: Alignment.center,
      shadowColor: mainShadowColor,
      shadowBlur: 5.0,
      shadowOffset: Offset(2.0, 2.0),
      corner: Corner.all(9.0),
    );
  }

  Widget buildDemo3() {
    return FSuper(
      width: MediaQueryData.fromWindow(window).size.width - 40.0,
      height: 200,
      backgroundColor: mainBackgroundColor,
      child1: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          FDottedLine(
            color: Colors.lightBlue.shade600,
            height: 100.0,
            width: 50,
            strokeWidth: 2.0,
            dottedLength: 10.0,
            space: 2.0,
          ),
          FDottedLine(
            color: Colors.red,
            height: 50.0,
            width: 100.0,
            strokeWidth: 2.0,
            dottedLength: 10.0,
            space: 2.0,
          ),
          FDottedLine(
            color: Colors.amber.shade600,
            height: 100.0,
            width: 100,
            strokeWidth: 2.0,
            dottedLength: 10.0,
            space: 2.0,
          ),
        ],
      ),
      child1Alignment: Alignment.center,
      shadowColor: mainShadowColor,
      shadowBlur: 5.0,
      shadowOffset: Offset(2.0, 2.0),
      corner: Corner.all(9.0),
    );
  }

  Widget buildDemo4() {
    return FSuper(
      width: MediaQueryData.fromWindow(window).size.width - 40.0,
      height: 200,
      backgroundColor: mainBackgroundColor,
      child1: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          FDottedLine(
            color: Colors.lightBlue.shade600,
            height: 70.0,
            width: 70.0,
            strokeWidth: 2.0,
            dottedLength: 10.0,
            space: 2.0,
            corner: FDottedLineCorner.all(50),
          ),
          FDottedLine(
            color: Colors.green.shade600,
            height: 70.0,
            width: 70.0,
            strokeWidth: 2.0,
            dottedLength: 10.0,
            space: 2.0,
            corner: FDottedLineCorner(
              leftTopCorner: 35.0,
              rightTopCorner: 35.0,
            ),
          ),
          FDottedLine(
            color: Colors.red.shade600,
            height: 70.0,
            width: 70.0,
            strokeWidth: 2.0,
            dottedLength: 10.0,
            space: 2.0,
            corner: FDottedLineCorner.all(12),
          ),
        ],
      ),
      child1Alignment: Alignment.center,
      shadowColor: mainShadowColor,
      shadowBlur: 5.0,
      shadowOffset: Offset(2.0, 2.0),
      corner: Corner.all(9.0),
    );
  }

  Widget buildDemo5() {
    return FSuper(
      width: 200,
      height: 200,
      backgroundColor: mainBackgroundColor,
      child1: FDottedLine(
        color: mainTextSubColor,
        strokeWidth: 2.0,
        dottedLength: 8.0,
        space: 3.0,
        child: Container(
          color: Colors.blue[100],
          width: 130,
          height: 70,
          alignment: Alignment.center,
          child: Text(
            "0873",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
              letterSpacing: 5.0,
            ),
          ),
        ),
        corner: FDottedLineCorner.all(6.0),
      ),
      child1Alignment: Alignment.center,
      shadowColor: mainShadowColor,
      shadowBlur: 5.0,
      shadowOffset: Offset(2.0, 2.0),
      corner: Corner.all(9.0),
    );
  }

  Widget buildDemo6() {
    return FSuper(
      width: 200,
      height: 200,
      backgroundColor: mainBackgroundColor,
      child1: FDottedLine(
        color: mainTextSubColor,
        strokeWidth: 2.0,
        dottedLength: 8.0,
        space: 3.0,
        corner: FDottedLineCorner.all(75.0),
        child: Container(
          width: 130,
          height: 130,
          alignment: Alignment.center,
          child: FDottedLine(
            color: mainTextSubColor,
            strokeWidth: 2.0,
            dottedLength: 8.0,
            space: 3.0,
            corner: FDottedLineCorner.all(20.0),
            child: Container(
              width: 43.0,
              height: 43.0,
              color: Colors.grey[900],
            ),
          ),
        ),
      ),
      child1Alignment: Alignment.center,
      shadowColor: mainShadowColor,
      shadowBlur: 5.0,
      shadowOffset: Offset(2.0, 2.0),
      corner: Corner.all(9.0),
    );
  }

  Widget buildDemo7() {
    return FSuper(
      width: 250,
      height: 350,
      backgroundColor: mainBackgroundColor,
      child1: FDottedLine(
        color: mainTextTitleColor,
        height: 160.0,
        strokeWidth: 2.0,
        dottedLength: 8.0,
        space: 3.0,
        child: Container(
          width: 150,
          height: 250,
          padding:
              EdgeInsets.only(left: 10.0, right: 10.0, top: 18.0, bottom: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "BILL",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 23.0,
                ),
              ),
              const SizedBox(height: 20.0),
              buildBillItem("FSuper", "306"),
              buildBillItem("FButton", "58"),
              buildBillItem("FSwitch", "43"),
              buildBillItem("FRadio", "38"),
              buildBillItem("FFloat", "108"),
              buildBillItem("FRefresh", "233"),
              const SizedBox(height: 16.0),
              FDottedLine(
                color: mainTextTitleColor,
                width: double.infinity,
                dottedLength: 2.0,
                strokeWidth: 5.0,
                space: 2.0,
              ),
              const SizedBox(height: 10.0),
              buildBillItem("Total", "786"),
              const SizedBox(height: 25.0),
              FSuper(
                text: "Fliggy-Mobile",
                textColor: mainTextTitleColor,
                textSize: 10.0,
                padding: EdgeInsets.only(left: 16.0),
                child1: Image.asset(
                  "assets/icon_logo.png",
                  width: 15,
                  height: 15,
                ),
                child1Alignment: Alignment.centerLeft,
              ),
            ],
          ),
        ),
      ),
      child1Alignment: Alignment.center,
      shadowColor: mainShadowColor,
      shadowBlur: 5.0,
      shadowOffset: Offset(2.0, 2.0),
      corner: Corner.all(9.0),
    );
  }

  Widget buildBillItem(String title, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              color: mainTextTitleColor, fontSize: 13.0, height: 1.18),
        ),
        Text(
          text,
          style: TextStyle(
              color: mainTextTitleColor, fontSize: 13.0, height: 1.18),
        ),
      ],
    );
  }

  Widget buildDemo8() {
    return FSuper(
      width: 200,
      height: 200,
      backgroundColor: mainBackgroundColor,
      child1: FDottedLine(
        child: Image.asset(
          'assets/icon_logo.png',
        ),
        dottedLength: 8.0,
        space: 3.0,
        corner: FDottedLineCorner.all(6.0),
      ),
      child1Alignment: Alignment.center,
      shadowColor: mainShadowColor,
      shadowBlur: 5.0,
      shadowOffset: Offset(2.0, 2.0),
      corner: Corner.all(9.0),
    );
  }
}
