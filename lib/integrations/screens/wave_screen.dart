import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prokit_flutter/integrations/utils/colors.dart';
import 'package:prokit_flutter/integrations/utils/common.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class WaveScreen extends StatefulWidget {
  static String tag = '/WaveScreen';

  @override
  WaveScreenState createState() => WaveScreenState();
}

class WaveScreenState extends State<WaveScreen> {
  @override
  Widget build(BuildContext context) {
    changeStatusColor(primaryColor);
    return Scaffold(
      appBar: getAppBar(context, "Wave Widget"),
      body: WaveWidget(
        config: CustomConfig(
          gradients: [
            [Colors.red, Color(0xEEF44336)],
            [Colors.red[800], Color(0x77E57373)],
            [Colors.orange, Color(0x66FF9800)],
            [Colors.yellow, Color(0x55FFEB3B)]
          ],
          durations: [35000, 19440, 10800, 6000],
          heightPercentages: [0.20, 0.23, 0.25, 0.30],
          blur: MaskFilter.blur(BlurStyle.solid, 10),
          gradientBegin: Alignment.bottomLeft,
          gradientEnd: Alignment.topRight,
        ),
        waveAmplitude: 0,
        backgroundColor: Colors.blue,
        size: Size(double.infinity, double.infinity),
      ),
    );
  }
}
