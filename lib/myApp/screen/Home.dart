import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prokit_flutter/dashboard/model/db1/Db1Model.dart';
import 'package:prokit_flutter/myApp/utils/DbColors.dart';
import 'package:prokit_flutter/myApp/utils/DbConstant.dart';
import 'package:prokit_flutter/myApp/utils/DbDataGenerator.dart';
import 'package:prokit_flutter/myApp/utils/DbExtension.dart';
import 'package:prokit_flutter/myApp/utils/Db1Widget.dart';
import 'package:prokit_flutter/myApp/utils/DbImages.dart';
import 'package:prokit_flutter/myApp/utils/DbStrings.dart';
import 'OrderPage.dart';
import 'OrdersDetail.dart';
import 'Search.dart';
import 'Settings.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'Description.dart';

class Dashboard1 extends StatefulWidget {
  static String tag = '/Dashboard1';


  @override
  Dashboard1State createState() => Dashboard1State();
}


class Dashboard1State extends State<Dashboard1> {
  int _page = 1;
  GlobalKey _bottomNavigationKey = GlobalKey();
  final List<Widget> _children = [
    T8Listing(),
    homePage(),
    T3Search(),
    T8Setting(),
  ];
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;

    changeStatusColor(db1_colorPrimary);
    return Scaffold(

      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        color: Colors.red[600],
        backgroundColor: Colors.white,
        buttonBackgroundColor: db1_colorPrimary,
        height: 50,
        index: 1,
        items: <Widget>[

          Icon(Icons.shop,size: 20, color: Colors.white),
          Icon(Icons.home,size: 20, color: Colors.white),
          Icon(Icons.search,size: 20, color: Colors.white),
          Icon(Icons.settings,size: 20, color: Colors.white),

        ],
        animationDuration: Duration(
          milliseconds: 200
        ),
        animationCurve: Curves.bounceInOut,
        onTap: (index){
          setState(() {
            _page = index;
          });

        },
      ),
      backgroundColor: db1_colorPrimary,
      body: _children[_page],
    );
  }
}

class Popular extends StatelessWidget {
  DB1FoodModel model;

  Popular(DB1FoodModel model, int pos) {
    this.model = model;
  }

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(bottom: 16,left: 16,right: 16),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: new BorderRadius.circular(12.0),
            child: Image.asset(
              model.img,
              fit: BoxFit.fill,
              height: 80,
              width: 80,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              text(model.name,fontFamily:fontMedium ),
              text(model.info,
                  maxLine: 1,
                  isLongText: false,
                  textColor: db1_textColorSecondary, fontSize: textSizeSMedium),
              Row(
                children: <Widget>[
                  text(model.duration,
                      textColor: db1_textColorSecondary,
                      isLongText: false,
                      maxLine: 1,
                      fontSize: textSizeSMedium),
                  VerticalDivider(
                    color: db1_grey,
                    width: 0.5,
                  ),
                  RatingBar(
                    initialRating: 5,
                    minRating: 1,
                    itemSize: 16,
                    direction: Axis.horizontal,
                    itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: db1_yellow,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
class Category extends StatelessWidget {
  Db1CategoryModel model;

  Category(Db1CategoryModel model, int pos) {
    this.model = model;
  }

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(left: 16),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: new BorderRadius.circular(12.0),
            child: Image.asset(
              model.img,
              fit: BoxFit.fill,
              height: width*0.2,
              width: width*0.2,
            ),
          ),
          SizedBox(height: 4,),
          text(model.name)
        ],
      ),
    );
  }
}
class Recommended extends StatelessWidget{
  DB1FoodModel model;
  Recommended(DB1FoodModel model, int pos) {
    this.model = model;
  }

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;

    return Container(
        width: MediaQuery.of(context).size.width/1.5,
        margin: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: new Column(
          children: <Widget>[
            Container(
              alignment: FractionalOffset.centerLeft,
              child: new ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  model.img,
                  height: width*0.38,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -30.0, 0.0),
              margin: new EdgeInsets.only(left: 20,right: 20,top: 0),
              decoration: new BoxDecoration(
                color: db1_white,
                shape: BoxShape.rectangle,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: dbShadowColor, blurRadius: 0.5, spreadRadius: 1)
                ],
                borderRadius: new BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      text(model.name,
                          fontFamily: fontMedium,
                          maxLine: 2),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          text(model.info,textColor: db1_textColorSecondary),
                          text(model.duration,textColor: db1_textColorSecondary),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

          ],
        ));
  }
}
class Filter extends StatelessWidget {
  Db1CategoryModel model;

  Filter(Db1CategoryModel model, int pos) {
    this.model = model;
  }

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(left: 16),
      child: Column(
        children: <Widget>[
          Container(
            decoration: boxDecoration(bgColor: model.color, radius: 12),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(
                model.img,
                height: width*0.12,
                width: width*0.12,
              ),
            ),
          ),
          text(model.name, textColor: db1_textColorSecondary)
        ],
      ),
    );
  }
  launchScreen(context, String tag, {Object arguments}) {
    if (arguments == null) {
      Navigator.pushNamed(context, tag);
    } else {
      Navigator.pushNamed(context, tag, arguments: arguments);
    }
  }
}

class homePage extends StatefulWidget {


  @override
  _homePageState createState() => _homePageState();
}


class _homePageState extends State<homePage> {

  List<Db1CategoryModel> mListings;
  List<Db1CategoryModel> mListings1;
  List<DB1FoodModel> mListings2;
  List<DB1FoodModel> mListings3;


  @override
  void initState() {
    super.initState();
    mListings = getCategories().cast<Db1CategoryModel>();
    mListings1 = getFilterFavourites().cast<Db1CategoryModel>();
    mListings2 = getPopular().cast<DB1FoodModel>();
    mListings3 = getFoodItems().cast<DB1FoodModel>();
  }


  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return SafeArea(
        child:
        Stack(
          children: <Widget>[
            Container(
              height: 70,
              margin: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: db1_white,width: 2)),
                                child: CircleAvatar(
                                    backgroundImage: AssetImage(db_profile),
                                    radius: 25,
                              ),
                          ),
                          SizedBox(width: 16,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              //    Icon(Icons.location_on,color: db1_white,size: 16,),
                              text(db1_address,textColor: db1_white,isLongText: true,)

                            ],
                          )
                        ],
                      ),
                      SizedBox(width: 16),
                      //text(t5_username,textColor: t5White,fontSize: textSizeNormal,fontFamily: fontMedium)
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(top: 100),
              child: Container(
                padding: EdgeInsets.only(top: 20),
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                    color: db1_white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20,bottom: 4),
                      child: text(db1_lbl_popular,
                          fontSize: textSizeNormal, fontFamily: fontMedium),
                    ),
                    SizedBox(height: 16,),
                    SizedBox(

                      height: width*0.6,

                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return T2SignIn();
                          }));
                        },
                        child: ListView.builder(

                            scrollDirection: Axis.horizontal,
                            itemCount: mListings3.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Recommended(mListings3[index],index);
                            }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,bottom: 16),
                      child: text(db1_lbl_categories,
                          fontSize: textSizeNormal, fontFamily: fontMedium),
                    ),
                    InkWell(

                      onTap: (){
                        setState(() {

                        });
                      },
                      child: SizedBox(
                        height: width*0.3,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: mListings1.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Filter(mListings1[index], index);
                            }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,bottom: 16),
                      child: text(db1_lbl_nearby,
                          fontSize: textSizeNormal, fontFamily: fontMedium),
                    ),
                    ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: mListings2.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Popular(mListings2[index], index);
                        }),
                    SizedBox(height: 16,)
                  ],
                ),
              ),
            )

          ],
        ),
      );
  }
}
