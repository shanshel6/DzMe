import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prokit_flutter/theme1/utils/T1Constant.dart';
import 'package:prokit_flutter/theme1/utils/T1Widget.dart';
import 'package:prokit_flutter/theme1/utils/T1Images.dart';
import 'package:prokit_flutter/theme1/utils/T1Colors.dart';
import 'package:prokit_flutter/theme1/utils/T1Strings.dart';

class T1Login extends StatelessWidget {
  static var tag = "/T1SignIn";
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 30),
                Image.asset(t1_ic_ring,height: 100,width: 100),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[formHeading(t1_lbl_sign_in_header), formSubHeadingForm(t1_lbl_sign_up)],
                ),
                SizedBox(height: 50),
                editTextStyle(t1_user_name,isPassword: false),
                SizedBox(height: 16),
                editTextStyle(t1_hint_password,isPassword: true),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 0, 40, 0),
                  child: CheckboxListTile(
                    title: text(t1_lbl_remember,textColor: t1TextColorPrimary),
                    value: rememberMe,
                    onChanged: (newValue) { },
                    controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 16, 40, 16),
                  child: shadowButton(t1_lbl_sign_in)
                ),
                SizedBox(height: 24),
                text(t1_lbl_forgot_password,textColor: t1_blue,fontFamily: fontMedium)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
