import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prokit_flutter/theme10/models/T10Models.dart';
import 'package:prokit_flutter/theme10/utils/T10Colors.dart';
import 'package:prokit_flutter/theme10/utils/T10Constant.dart';
import 'package:prokit_flutter/theme10/utils/T10DataGenerator.dart';
import 'package:prokit_flutter/theme10/utils/T10Extension.dart';
import 'package:prokit_flutter/theme10/utils/T10Strings.dart';
import 'package:prokit_flutter/theme10/utils/T10Widget.dart';

class T10Cards extends StatefulWidget {
  static String tag = '/T10Cards';

  @override
  T10CardsState createState() => T10CardsState();
}

class T10CardsState extends State<T10Cards> {
  List<T10Product> mList;

  @override
  void initState() {
    super.initState();
    mList = getProducts();
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(t10_app_background);
    return Scaffold(
      backgroundColor: t10_app_background,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            T10TopBar(theme10_title_cards),
            ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: mList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ProductList(mList[index], index);
                }),
          ],
        ),
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  T10Product model;

  ProductList(T10Product model, int pos) {
    this.model = model;
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: boxDecoration(showShadow: true, radius: spacing_middle),
      padding: EdgeInsets.all(spacing_standard),
      margin: EdgeInsets.only(
          left: spacing_standard_new,
          right: spacing_standard_new,
          bottom: spacing_standard_new),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(spacing_middle)),
              child: Image.asset(
                model.img,
                fit: BoxFit.fill,
                height: width * 0.2,
              ),
            ),
          ),
          SizedBox(
            width: spacing_standard_new,
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    text(model.name, fontFamily: fontMedium),
                  ],
                ),
                text(model.category, textColor: t10_textColorSecondary),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        text(
                          model.price,
                        ),
                        SizedBox(
                          width: spacing_control,
                        ),
                        text(model.subPrice,
                            textColor: t10_textColorSecondary,
                            lineThrough: true)
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.remove_circle,
                          color: t10_textColorSecondary,
                          size: 20,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        text("2",
                            fontFamily: fontMedium,
                            fontSize: textSizeLargeMedium),
                        SizedBox(
                          width: 4,
                        ),
                        Icon(
                          Icons.add_circle,
                          color: t10_textColorSecondary,
                          size: 20,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
