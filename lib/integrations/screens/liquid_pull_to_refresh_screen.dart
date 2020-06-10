import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prokit_flutter/integrations/app_localizations.dart';
import 'package:prokit_flutter/integrations/utils/colors.dart';
import 'package:prokit_flutter/integrations/utils/common.dart';
import 'package:prokit_flutter/integrations/utils/styles.dart';
import 'package:lipsum/lipsum.dart' as lipsum;
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class LiquidPullToRefreshScreen extends StatefulWidget {
  static String tag = '/LiquidPullToRefreshScreen';

  @override
  LiquidPullToRefreshScreenState createState() => LiquidPullToRefreshScreenState();
}

class LiquidPullToRefreshScreenState extends State<LiquidPullToRefreshScreen> {
  final GlobalKey<RefreshIndicatorState> refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    super.initState();
    refreshData();
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(primaryColor);

    return Scaffold(
      appBar: getAppBar(context, AppLocalizations.of(context).translate('liquid_pull_to_refresh')),
      body: LiquidPullToRefresh(
          key: refreshIndicatorKey,
          color: primaryColor,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(16),
                child: text((index + 1).toString() + ' ' + lipsum.createText(), maxLine: 1),
              );
            },
            itemCount: 100,
            shrinkWrap: true,
          ),
          onRefresh: refreshData),
    );
  }

  Future<void> refreshData() async {
    final Completer<void> completer = Completer<void>();
    Timer(const Duration(seconds: 1), () {
      completer.complete();
    });
    return completer.future.then<void>((_) {
      refreshIndicatorKey.currentState.show();
    });
  }
}
