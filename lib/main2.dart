import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:prokit_flutter/main/utils/AppColors.dart';
import 'package:prokit_flutter/theme2/utils/T2Colors.dart';
import 'package:provider/provider.dart';
import 'integrations/app_localizations.dart';
import 'integrations/app_state.dart';
import 'myApp/screen/Home.dart';
import 'myApp/screen/Profile.dart';
import 'myApp/screen/SignUp.dart';
import 'myApp/screen/Verification.dart';
import 'myApp/screen/WalkThrough.dart';

void main() {
  FlutterError.onError = Crashlytics.instance.recordFlutterError;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (_) => AppState('en', colorCustom),
      child: Consumer<AppState>(builder: (context, provider, builder) {
        return  MaterialApp(
            debugShowCheckedModeBanner: false,
            supportedLocales: [Locale('en'), Locale('hi')],
            localizationsDelegates: [AppLocalizations.delegate, GlobalMaterialLocalizations.delegate, GlobalWidgetsLocalizations.delegate],
            localeResolutionCallback: (locale, supportedLocales) {
              return Locale(Provider.of<AppState>(context).selectedLanguageCode);
            },
            locale: Provider.of<AppState>(context).locale,
            routes: <String, WidgetBuilder>{

              Dashboard1.tag: (context) => Dashboard1(),
              T9Profile.tag: (context) => T9Profile(),
              T5SignUp.tag: (context) => T5SignUp(),
              T5Verification.tag: (context) => T5Verification(),
              T5WalkThrough.tag: (context) => T5WalkThrough(),

            },
            title: 'dzMe',
            theme: ThemeData(
                primarySwatch: colorCustom,
                backgroundColor: appWhite,
                scaffoldBackgroundColor: appWhite
            ),
            home: Dashboard1(),
            builder: (context, child) {
              return ScrollConfiguration(
                behavior: SBehavior(),
                child: child,
              );
            },
          );
      }),
    );

  }
}
class SBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
