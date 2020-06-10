
import 'package:flutter/material.dart';
import 'package:prokit_flutter/theme1/utils/T1Constant.dart';
import 'package:prokit_flutter/theme1/utils/T1Widget.dart';
import 'package:prokit_flutter/theme1/utils/T1Colors.dart';
import 'package:prokit_flutter/theme1/utils/T1Images.dart';

class Walkthrough extends StatefulWidget {
  final title;
  final content;
  final imageIcon;
  final imagecolor;

  Walkthrough(
      {this.title,
        this.content,
        this.imageIcon,
        this.imagecolor = Colors.redAccent});

  @override
  WalkthroughState createState() {
    return new WalkthroughState();
  }
}

class WalkthroughState extends State<Walkthrough>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 500));
    animation = new Tween(begin: -250.0, end: 0.0).animate(new CurvedAnimation(
        parent: animationController, curve: Curves.easeInOut));
    animation.addListener(() => setState(() {}));
    animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return new Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
//        mainAxisSize: MainAxisSize.min,
//        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height:height/15),
          text( widget.title,fontSize: textSizeLarge,fontFamily: fontSemibold,textColor: t1_colorPrimary),
          SizedBox(height:height/30),
          Image.asset(
            widget.imageIcon,
            width:height*0.35,
            height: height*0.35,
          ),
          SizedBox(height:height/30),
          Padding(
            padding: EdgeInsets.only(left: 16,right: 16),
              child: text(widget.content,maxLine: 2,fontSize: textSizeMedium,isCentered: true))
        ],
      ),
    );
  }
}
