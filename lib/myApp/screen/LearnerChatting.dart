import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/Learner/model/LearnerModels.dart';
import 'package:prokit_flutter/myApp//utils/LearnerColors.dart';
import 'package:prokit_flutter/myApp//utils/LearnerConstant.dart';
import 'package:prokit_flutter/myApp//utils/LearnerDataGenerator.dart';
import 'package:prokit_flutter/myApp//utils/LearnerExtension.dart';
import 'package:prokit_flutter/myApp//utils/LearnerImages.dart';
import 'package:prokit_flutter/myApp//utils/LearnerWidget.dart';

class LearnerChattingScreen extends StatefulWidget {
  @override
  _LearnerChattingScreenState createState() => _LearnerChattingScreenState();
}

class _LearnerChattingScreenState extends State<LearnerChattingScreen> {
  String userId = '1';

  @override
  Widget build(BuildContext context) {
    Widget buildChatMessages(ChatModel message) {
      if (message.id != userId) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              alignment: Alignment.centerRight,
              width: MediaQuery.of(context).size.width * 0.45,
              decoration: BoxDecoration(color: learner_colorPrimary,borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))),
              child:  text(message.message,
                        textColor: learner_white,
                        fontSize: textSizeMedium,
                        fontFamily: fontMedium,
                        isLongText: true).center()
                    .paddingOnly(left: 8, right: 8, top: 8, bottom: 8),
            )

                .paddingOnly(left: 16,right: 16,bottom: 16),
          ],
        );
      } else {
        return Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: learner_layout_background,borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight:  Radius.circular(10),topLeft:  Radius.circular(10))),
              width: MediaQuery.of(context).size.width * 0.75,
              child: text(message.message,
                        textColor: learner_textColorPrimary,
                        fontSize: textSizeMedium,
                        maxLine: 3,
                        fontFamily: fontMedium,
                        isLongText: true)
                    .paddingAll(8),
            ).paddingOnly(left: 16,right: 16,bottom: 16),
          ],
        );
      }
    }

    changeStatusColor(Colors.white);
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: learner_white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(width * 0.25),
          child: Container(
            color: Colors.white,
            child: SafeArea(
              child: Container(
                color: learner_white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: learner_colorPrimary,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              text("Marc Elliot",
                                      textColor: learner_textColorPrimary,
                                      fontSize: textSizeLargeMedium,
                                      fontFamily: fontMedium)
                                  .paddingOnly(top: 4, bottom: 4),
                              text("Active",
                                  textColor: learner_textColorSecondary,
                                  fontSize: textSizeMedium,
                                  fontFamily: fontRegular)
                            ],
                          ),
                          Image.asset(
                            learner_ic_profile4,
                            height: 50,
                            width: 50,
                            fit: BoxFit.fill,
                          ).cornerRadiusWithClipRRect(25),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                ).paddingOnly(left: 12, right: 16),
              ),
            ),
          ),
        ),
        body: Stack(
          children: <Widget>[
            ListView.builder(
              itemBuilder: (context, i) => buildChatMessages(getMessages()[i]),
              itemCount: getMessages().length,
              shrinkWrap: true,
            ),
          ],
        ),
        persistentFooterButtons: <Widget>[
          Container(
            height: 50,
            margin: EdgeInsets.only(left: 20, right: 20,top: 16,bottom: 16),
            width: width,
            child: TextFormField(
              style: TextStyle(fontSize: textSizeMedium, fontFamily: fontRegular,),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(24, 18, 24, 18),
                hintText: "Ask me Something",
                filled: true,
                fillColor: learner_white,
                prefixIcon: Image.asset(learner_ic_smile,height: 30,width: 30,).paddingAll(10),
                suffixIcon: Container(
                  decoration: BoxDecoration(color: learner_colorPrimary,shape: BoxShape.circle,),
                  padding: EdgeInsets.all(0.0),
                  child: Icon(Icons.arrow_upward,color: learner_white,),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: const BorderSide(color: learner_white, width: 0.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: const BorderSide(color: learner_white, width: 0.0),
                ),
              ),
            ),
          ).cornerRadiusWithClipRRect(20).withShadow(shadowColor: learner_ShadowColor)
        ],
      ),
    );
  }
}
