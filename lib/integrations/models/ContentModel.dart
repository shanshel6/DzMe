import 'package:flutter/material.dart';

class ContentModel {
  String title;
  String icon;
  Widget pageName;
  Color bgColor;
  bool isExpanded;
  List<ContentModel> items;

  ContentModel({this.title = '', this.icon = 'ic_smartphone.png', this.pageName, this.bgColor = Colors.blue, this.isExpanded = false, this.items});
}
