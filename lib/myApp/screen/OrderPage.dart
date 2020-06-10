import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:prokit_flutter/theme2/screens/T2SignUp.dart';
import 'package:prokit_flutter/theme2/utils/T2Constant.dart';
import 'package:prokit_flutter/theme2/utils/T2Extension.dart';
import 'package:prokit_flutter/theme2/utils/T2Colors.dart';
import 'package:prokit_flutter/theme2/utils/T2Strings.dart';
import 'package:prokit_flutter/theme2/utils/T2Widgets.dart';

import 'OrdersDetail.dart';

class T2SignIn extends StatefulWidget {
  static var tag = "/T2SignIn";

  @override
  T2SignInState createState() => T2SignInState();
}

class T2SignInState extends State<T2SignIn> {
  bool passwordVisible = false;
  bool isRemember = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(t2White);
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
      color: t2_white,
      child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 14),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  headerText(t2_lbl_Order_header),
                  SizedBox(width: 4),
                ],
              ),
            ),
            /*content*/
            Padding(

              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  text(t2_hint_Order, fontSize: textSizeMedium),
              Container(
                height: 200,
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter a search term'
                  ),
                ),
              ),
                  SizedBox(
                    height: 50,
                  ),
                  AppButton(
                      textContent: t2_lbl_get_order,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return T8Listing();
                        }));
                      }),
                ],
              ),
            ),
          ],
      ),
    ),
        ));
  }
}
