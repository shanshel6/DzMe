import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prokit_flutter/integrations/screens/home_page.dart';
import 'package:prokit_flutter/main/model/AppMoel.dart';
import 'package:prokit_flutter/main/utils/AppColors.dart';
import 'package:prokit_flutter/main/utils/AppConstant.dart';
import 'package:prokit_flutter/main/utils/AppImages.dart';
import 'package:prokit_flutter/main/utils/AppStrings.dart';
import 'package:prokit_flutter/main/utils/AppWidget.dart';

import 'ProkitScreenListing.dart';

class ProkitLauncher extends StatefulWidget {
  static String tag = '/ProkitLauncher';

  @override
  ProkitLauncherState createState() => ProkitLauncherState();
}

class ProkitLauncherState extends State<ProkitLauncher> {
  var width;
  var height;
  var selectedTab = 0;
  bool _loaded = false;
  List<ProTheme> list = List<ProTheme>();
  List<ProTheme> screenList = List<ProTheme>();
  ProTheme dashboard;
  ProTheme fullapp;

  PageController _controller = PageController(initialPage: 0, keepPage: false);

  Widget Category(
      Color color, String img, String name, BuildContext context, var id) {
    return GestureDetector(
      onTap: () {
        if (id == 2) {
          launchScreen(context, ProkitScreenListing.tag, arguments: dashboard);
        }
        if (id == 1) {
          launchScreen(context, ProkitScreenListing.tag, arguments: fullapp);
        }
        if (id == 3) {
          launchScreen(context, IntegrationHomePage.tag);
        }
      },
      child: Container(
        width: width / 3.7,
        height: width / 4,
        decoration: boxDecoration(radius: 4, bgColor: color, showShadow: true),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              img,
              width: width / 12,
              height: width / 12,
              color: appWhite,
            ),
            text(name,
                textColor: appWhite,
                fontSize: textSizeMedium,
                fontFamily: fontMedium)
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    loadContent().then((s) => setState(() {
          list = s.themes;
          screenList = s.screenList;
          dashboard = s.dashboard;
          fullapp = s.fullapp;
          _loaded = true;
        }));
  }

  Widget tabItem(String name, int pos, {var isRight = false}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _controller.jumpToPage(pos);
          selectedTab = pos;
        });
      },
      child: Container(
        child: text(name,
            textColor:
                selectedTab == pos ? appColorPrimaryDark : appTextColorPrimary,
            fontSize: textSizeLargeMedium,
            fontFamily: fontMedium),
        alignment: Alignment.center,
        width: width / 2,
        height: 50,
        decoration: selectedTab == pos
            ? BoxDecoration(
                color: appColorPrimaryLight,
                borderRadius: isRight
                    ? BorderRadius.only(topLeft: Radius.circular(16))
                    : BorderRadius.only(topRight: Radius.circular(16)))
            : BoxDecoration(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
        body: FutureBuilder<AppTheme>(
      future: loadContent(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Container(
            margin: EdgeInsets.only(top: 24),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      text(appLblDashboardHeading,
                          textColor: appTextColorPrimary,
                          fontFamily: fontBold,
                          fontSize: textSizeXXLarge),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Category(appCat1, app_ic_phone, appLblFullApps,
                              context, 1),
                          Category(appCat2, app_dashboard, appLblDashboard,
                              context, 2),
                          Category(appCat3, app_ic_phone, appLblIntegrations,
                              context, 3),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          tabItem(appLblThemeList, 0),
                          tabItem(appLblScreenList, 1, isRight: true),
                        ],
                      ),
                      Expanded(
                          child: Container(
                              height: double.maxFinite,
                              color: appColorPrimaryLight,
                              child: PageView(
                                onPageChanged: (value) {
                                  setState(() {
                                    selectedTab = value;
                                  });
                                },
                                controller: _controller,
                                children: <Widget>[
                                  ThemeList(list, context),
                                  ThemeList(screenList, context)
                                ],
                              )))
                    ],
                  ),
                )
              ],
            ),
          );
        } else if (snapshot.hasError) {
          return text("${snapshot.error.toString()}",
              textColor: appTextColorPrimary);
        }
        return Center(child: CircularProgressIndicator());
      },
    ));
  }

  Future<String> _loadContentAsset() async {
    return await rootBundle.loadString('assets/app_content.json');
  }

  Future<AppTheme> loadContent() async {
    String jsonString = await _loadContentAsset();
    final jsonResponse = json.decode(jsonString);
    return new AppTheme.fromJson(jsonResponse);
  }

  Future wait(int seconds) {
    return new Future.delayed(Duration(seconds: seconds), () => {});
  }
}
