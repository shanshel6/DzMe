import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prokit_flutter/integrations/models/ContentModel.dart';
import 'package:prokit_flutter/integrations/utils/constants.dart';
import 'package:prokit_flutter/integrations/utils/data_provider.dart';
import 'package:prokit_flutter/integrations/utils/styles.dart';
import 'package:nb_utils/nb_utils.dart';


class IntegrationHomePage extends StatefulWidget {
  static String tag = '/HomePage';

  @override
  IntegrationHomePageState createState() => IntegrationHomePageState();
}

class IntegrationHomePageState extends State<IntegrationHomePage> {
  List<ContentModel> list = List();
  List<ContentModel> topList = List();
  var isEnglishSelected = true;
  var isDarkThemeSelected = false;
  LiveStream liveStream = LiveStream();

  init(context) async {
    list = await getContents(context);
    topList = await getTopContents(context);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    init(context);


    Widget buildExpandedTile(ContentModel model) {
      return InkWell(
        onTap: () {
          if (model.pageName != null) model.pageName.launch(context);
        },
        child: Container(
          margin: EdgeInsets.only(left: 30, top: 10, bottom: 10, right: 30),
          color: blackColor.withOpacity(0.02),
          padding: EdgeInsets.all(16),
          child: Row(
            children: <Widget>[
              text(model.title),
            ],
          ),
        ),
      );
    }

    Widget buildListTile(ContentModel item, index) {
      if (item.items == null) return ListTile(title: text(item.title));
      return ExpansionTile(
        initiallyExpanded: item.isExpanded,
        onExpansionChanged: (isExpanded) {
          setState(() {
            item.isExpanded = isExpanded;
          });
        },
        title: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 0),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(color: item.bgColor, borderRadius: BorderRadius.all(Radius.circular(4))),
                    child: Image.asset('images/integrations/icons/${item.icon}', height: 30, color: Colors.white),
                  ),
                  SizedBox(width: 10),
                  Expanded(child: text(item.title, maxLine: 2)),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(shape: BoxShape.circle, color: item.bgColor),
                    child: Icon(!item.isExpanded ? Icons.keyboard_arrow_right : Icons.keyboard_arrow_down, size: 20, color: Colors.white),
                  )
                ],
              ),
            ),
            Divider(height: 0.5),
          ],
        ),
        trailing: SizedBox(),
        children: item.items.map(buildExpandedTile).toList(),
      );
    }

    final listView = ListView.builder(itemCount: list.length, shrinkWrap: true, itemBuilder: (context, index) => buildListTile(list[index], index), physics: NeverScrollableScrollPhysics());


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: text("Integrations",fontFamily: fontBold,fontSize: 22.0,textColor: Colors.black),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            listView,
          ],
        ),
      ),
    );
  }
}
