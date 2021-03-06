import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prokit_flutter/social/model/SocialModel.dart';
import 'package:prokit_flutter/social/utils/SocialDataGenerator.dart';
import 'package:prokit_flutter/social/utils/SocialImages.dart';
import 'package:prokit_flutter/social/utils/SocialWidget.dart';
import 'package:prokit_flutter/social/utils/SocialColors.dart';
import 'package:prokit_flutter/social/utils/SocialStrings.dart';
import 'package:prokit_flutter/social/utils/SocialConstant.dart';
import 'package:prokit_flutter/social/utils/SocialExtension.dart';

import 'SocialCall.dart';
import 'SocialViewCalls.dart';

class SocialHomeCalls extends StatefulWidget {

  @override
  SocialHomeCallsState createState() => SocialHomeCallsState();
}

class SocialHomeCallsState extends State<SocialHomeCalls> {
  var mFriendsLabel = text(social_lbl_friends, fontFamily: fontMedium);
  var mGroupsLabel = text(social_lbl_groups, fontFamily: fontMedium);
  Widget mSeeMore (){
    return
     GestureDetector(
       onTap: (){
         launchScreen(context, SocialViewCall.tag);
       },
       child:  Container(
         padding: EdgeInsets.fromLTRB(spacing_standard_new,spacing_control,spacing_standard,spacing_control),

         margin: EdgeInsets.only(top: spacing_standard_new,bottom: spacing_standard_new),
         decoration: boxDecoration(
           color: social_view_color, bgColor: social_app_background,),
         child: RichText(
           text: TextSpan(
             children: [
               TextSpan(text: social_lbl_see_more, style: TextStyle(
                   fontSize: textSizeMedium,
                   color: social_colorPrimary
               )),
               WidgetSpan(
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                   child: Icon(
                     Icons.keyboard_arrow_right, color: social_textColorPrimary,
                     size: 16,),
                 ),
               ),
             ],
           ),
         ),
       ),
     );
  }

  List<SocialUser> mList;
  List<SocialUser> mList1;
  @override
  void initState() {
    super.initState();
    mList=addCallData();
    mList1=addGroupCallData();
  }

  @override
  Widget build(BuildContext context) {
    return
//    Stack(
//      children: <Widget>[
//        Container(
//          margin: EdgeInsets.only(bottom: spacing_standard_new,right: spacing_standard_new),
//          alignment: Alignment.bottomRight,
//          child: Image.asset(social_fab_msg,),
//        ),
//        Column(
//          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                  child:
                  Container(
                    margin: EdgeInsets.all(spacing_standard_new),
                    child:   Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        mFriendsLabel,
                        SizedBox(height: spacing_standard_new,),
                        Container(
                          decoration: boxDecoration(radius: spacing_middle),
                          padding: EdgeInsets.all(spacing_middle),
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: mList.length,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Calls(mList[index], index);
                                // return Chats(mListings[index], index);
                              }),
                        ),
                        mSeeMore(),
                        mGroupsLabel,
                        SizedBox(height: spacing_standard_new,),
                        Container(
                          decoration: boxDecoration(radius: spacing_middle),
                          padding: EdgeInsets.all(spacing_middle),
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: mList1.length,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Calls(mList1[index], index);
                                // return Chats(mListings[index], index);
                              }),
                        ),
                        mSeeMore(),
                      ],
                    ),
                  )
              ),
            );
//          ],
//        );
//      ],
//    );
  }
}

class Calls extends StatelessWidget {
  SocialUser model;
  Calls(SocialUser model,int pos)
  {
    this.model=model;
  }
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return
     GestureDetector(
       onTap: (){
         launchScreen(context, SocialCall.tag);
       },
       child:  Container(
         margin: EdgeInsets.only(bottom: spacing_standard_new),
         child:
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             Row(
               children: <Widget>[
                 ClipRRect(
                     borderRadius: BorderRadius.all(Radius.circular(spacing_middle)),
                     child:Container(
                       color: social_dark_gray,
                       child:  Image.asset(
                         model.image, height: width * 0.13, width: width * 0.13,fit: BoxFit.fill,),
                     )),
                 SizedBox(width: spacing_middle,),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     text(model.name, fontFamily: fontMedium),
                     text(model.info, textColor: social_textColorSecondary,)
                   ],
                 ),
               ],
             ),
             if(model.call==1)
               SvgPicture.asset(social_call1,color: social_dark_yellow,width: width*0.06,height: width*0.06,),
             if(model.call==2)
               SvgPicture.asset(social_call2,color: social_colorPrimary,width: width*0.06,height: width*0.06,),
             if(model.call==3)
               SvgPicture.asset(social_forward_call,color: social_perpul,width: width*0.06,height: width*0.06,),
           ],
         ),
       ),
     );
  }

}

