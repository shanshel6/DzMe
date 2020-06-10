import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prokit_flutter/dashboard/utils/Db3Widget.dart';
import 'package:prokit_flutter/shophop/screens/ShWalkThroughScreen.dart';
import 'package:prokit_flutter/shophop/utils/ShColors.dart';
import 'package:prokit_flutter/shophop/utils/ShConstant.dart';
import 'package:prokit_flutter/shophop/utils/ShConstant.dart';
import 'package:prokit_flutter/shophop/utils/ShExtension.dart';
import 'package:prokit_flutter/shophop/utils/ShImages.dart';
import 'package:prokit_flutter/theme5/utils/T5Colors.dart';


class ShSplashScreen extends StatefulWidget {
  static String tag = '/ShophopSplash';

  @override
  ShSplashScreenState createState() => ShSplashScreenState();
}

class ShSplashScreenState extends State<ShSplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }
  startTime() async {
    var _duration =  Duration(seconds: 5);
    return  Timer(_duration, navigationPage);
  }
  void navigationPage() {
    launchScreen(context, ShWalkThroughScreen.tag);
  }
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
        return Scaffold(
          body: Container(
            width: width+width*0.4,
            child: Stack(
              children: <Widget>[
                Image.asset(splash_bg,width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,fit: BoxFit.cover,),
                Positioned(
                  top: -width*0.2,
                  left: -width*0.2,
                  child: Container(
                    width:width*0.65,
                    height: width*0.65,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: sh_colorPrimary.withOpacity(0.3)
                    ),
                  ),
                ),
              Center(
                 child:Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: <Widget>[
                    Image.asset(ic_app_icon,width: width*0.3,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         text("Shop",textColor: sh_textColorPrimary,fontSize: 35.0,fontFamily: fontBold),
                         text("hop",textColor: sh_colorPrimary,fontSize: 35.0,fontFamily: fontBold),

                       ],
                     )
                   ],
                 ) ,
              ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        bottom: -width*0.2,
                        right: -width*0.2,
                        child: Container(
                          width:width*0.65,
                          height: width*0.65,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: sh_colorPrimary.withOpacity(0.3)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment:Alignment.bottomRight,
                    child: Image.asset(splash_img,width: width*0.5,height: width*0.5,))

              ],
            ),
          ),
        );
  }
}
