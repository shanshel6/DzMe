import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/Quiz/model/QuizModels.dart';
import 'package:prokit_flutter/Quiz/Screens/QuizDetails.dart';
import 'package:prokit_flutter/Quiz/utils/QuizColors.dart';
import 'package:prokit_flutter/Quiz/utils/QuizConstant.dart';
import 'package:prokit_flutter/Quiz/utils/QuizDataGenerator.dart';
import 'package:prokit_flutter/Quiz/utils/QuizExtension.dart';
import 'package:prokit_flutter/Quiz/utils/QuizStrings.dart';
import 'package:prokit_flutter/Quiz/utils/QuizWidget.dart';

class QuizAllList extends StatefulWidget {
  static String tag = '/QuizAllList';

  @override
  _QuizAllListState createState() => _QuizAllListState();
}

class _QuizAllListState extends State<QuizAllList> {
  List<NewQuizModel> mListings;
  int selectedPos = 1;

  @override
  void initState() {
    super.initState();
    selectedPos = 1;
    mListings = getQuizData();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    final quizAll = GridView.builder(
      scrollDirection: Axis.vertical,
      itemCount: mListings.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        changeStatusColor(quiz_app_background);
        return Container(
          color: quiz_white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                  child: Image.asset(
                    mListings[index].quizImage,
                    height: width * 0.4,
                    width: MediaQuery.of(context).size.width / 0.25,
                    fit: BoxFit.cover,
                  )),
              text(mListings[index].quizName,
                      fontSize: textSizeMedium,
                      maxLine: 2,
                      fontFamily: fontMedium)
                  .paddingOnly(top: 8, left: 16, right: 16, bottom: 8),
              SizedBox(
                height: 8,
              ),
              text(mListings[index].totalQuiz,
                      textColor: quiz_textColorSecondary)
                  .paddingOnly(left: 16, right: 16, bottom: 8),
            ],
          ),
        ).cornerRadiusWithClipRRect(16).onTap(() {
          launchScreen(context, QuizDetails.tag);
        });
        ;
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.58,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16),
    );

    final QuizCompleted = GridView.builder(
      scrollDirection: Axis.vertical,
      itemCount: mListings.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        changeStatusColor(quiz_app_background);
        return Container(
          color: quiz_white,
          //decoration: boxDecoration(radius: 16, showShadow: true, bgColor: quiz_white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                  child: Image.asset(
                    mListings[index].quizImage,
                    height: width * 0.4,
                    width: MediaQuery.of(context).size.width / 0.25,
                    fit: BoxFit.cover,
                  )),
              text(mListings[index].quizName,
                      fontSize: textSizeMedium,
                      maxLine: 2,
                      fontFamily: fontMedium)
                  .paddingOnly(top: 8, left: 16, right: 16, bottom: 8),
              SizedBox(
                height: 8,
              ),
              text(mListings[index].totalQuiz,
                      textColor: quiz_textColorSecondary)
                  .paddingOnly(left: 16, right: 16, bottom: 8),
              LinearProgressIndicator(
                value: 0.5,
                backgroundColor: textSecondaryColor.withOpacity(0.2),
                valueColor: AlwaysStoppedAnimation<Color>(
                  quiz_green,
                ),
              ).paddingAll(16),
            ],
          ),
        ).cornerRadiusWithClipRRect(16).onTap(() {
          launchScreen(context, QuizDetails.tag);
        });
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.52,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16),
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: quiz_app_background,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: width,
                  decoration: boxDecoration(
                      radius: spacing_middle,
                      bgColor: quiz_white,
                      showShadow: false),
                  margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedPos = 1;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            width: width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(spacing_middle),
                                  bottomLeft: Radius.circular(spacing_middle)),
                              color: selectedPos == 1
                                  ? quiz_white
                                  : Colors.transparent,
                              border: Border.all(
                                  color: selectedPos == 1
                                      ? quiz_white
                                      : Colors.transparent),
                            ),
                            child: text(
                              quiz_lbl_All,
                              fontSize: textSizeMedium,
                              isCentered: true,
                              fontFamily: fontMedium,
                              textColor: selectedPos == 1
                                  ? quiz_textColorPrimary
                                  : quiz_textColorSecondary,
                            ),
                          ),
                        ),
                        flex: 1,
                      ),
                      Container(
                        height: 40,
                        width: 1,
                        color: quiz_light_gray,
                      ).center(),
                      Flexible(
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedPos = 2;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(16.0),
                              width: width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(spacing_middle),
                                    bottomRight:
                                        Radius.circular(spacing_middle)),
                                color: selectedPos == 2
                                    ? quiz_white
                                    : Colors.transparent,
                                border: Border.all(
                                    color: selectedPos == 2
                                        ? quiz_white
                                        : Colors.transparent),
                              ),
                              child: text(
                                quiz_lbl_Completed,
                                fontSize: textSizeMedium,
                                isCentered: true,
                                fontFamily: fontMedium,
                                textColor: selectedPos == 2
                                    ? quiz_textColorPrimary
                                    : quiz_textColorSecondary,
                              ),
                            )),
                        flex: 1,
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  physics: ScrollPhysics(),
                  child: Container(
                    margin: EdgeInsets.only(right: 16, left: 16),
                    child: selectedPos == 1 ? quizAll : QuizCompleted,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
