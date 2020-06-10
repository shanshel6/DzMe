import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prokit_flutter/integrations/utils/colors.dart';
import 'package:prokit_flutter/integrations/utils/common.dart';
import 'package:prokit_flutter/integrations/utils/styles.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:nb_utils/nb_utils.dart';


class LiquidSwipeScreen extends StatefulWidget {
  static String tag = '/LiquidSwipeScreen';

  @override
  LiquidSwipeScreenState createState() => LiquidSwipeScreenState();
}

class LiquidSwipeScreenState extends State<LiquidSwipeScreen> {
  final pages = [
    Container(color: Colors.blue, child: Center(child: Text('Page 1', style: primaryTextStyle(size: 18)))),
    Container(color: Colors.orange, child: Center(child: Text('Page 2', style: primaryTextStyle(size: 18)))),
    Container(color: Colors.redAccent, child: Center(child: Text('Page 3', style: primaryTextStyle(size: 18)))),
  ];

  @override
  Widget build(BuildContext context) {
    changeStatusColor(primaryColor);

    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        enableLoop: false,
        waveType: WaveType.liquidReveal,
      ),
    );
  }
}
