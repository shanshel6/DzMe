import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prokit_flutter/integrations/utils/colors.dart';
import 'package:prokit_flutter/integrations/utils/common.dart';
import 'package:prokit_flutter/integrations/utils/styles.dart';
import 'package:nb_utils/nb_utils.dart';

class ButtonScreen extends StatefulWidget {
  static String tag = '/ButtonScreen';

  @override
  ButtonScreenState createState() => ButtonScreenState();
}

class ButtonScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    changeStatusColor(primaryColor);

    return Scaffold(
      appBar: getAppBar(context, 'Button'),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          SizedBox(height: 10),
          text('Raised Buttons'),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                color: Colors.transparent,
                child: textPrimary('Normal'),
              ),
              RaisedButton(
                onPressed: () {},
                color: Theme.of(context).primaryColor,
                child: textPrimary('Primary'),
              ),
              RaisedButton(
                onPressed: () {},
                color: Theme.of(context).accentColor,
                child: textPrimary('Secondary'),
              ),
            ],
          ),
          Divider(),
          text('Flat Buttons'),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                color: Colors.transparent,
                child: Text('Normal', style: primaryTextStyle(color: Theme.of(context).primaryColor)),
              ),
              FlatButton(
                onPressed: () {},
                color: Theme.of(context).primaryColor,
                child: textPrimary('Primary'),
              ),
              FlatButton(
                onPressed: () {},
                color: Theme.of(context).accentColor,
                child: textPrimary('Secondary'),
              ),
            ],
          ),
          Divider(),
          text('Material Buttons'),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MaterialButton(
                onPressed: () {},
                color: Colors.transparent,
                child: textPrimary('Normal'),
              ),
              MaterialButton(
                onPressed: () {},
                color: Theme.of(context).primaryColor,
                child: textPrimary('Primary'),
              ),
              MaterialButton(
                onPressed: () {},
                color: Theme.of(context).accentColor,
                child: textPrimary('Secondary'),
              ),
            ],
          ),
          Divider(),
          text('Outlin Buttons'),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              OutlineButton(
                onPressed: () {},
                child: textPrimary('Custom', color: textPrimaryColor),
                highlightedBorderColor: primaryColor,
              ),
              OutlineButton(
                onPressed: () {},
                child: textPrimary('Primary', color: primaryColor),
              ),
              OutlineButton(
                onPressed: () {},
                child: textPrimary('Secondary', color: textSecondaryColor),
              ),
            ],
          ),
          Divider(),
          text('Floating Buttons'),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FloatingActionButton(
                onPressed: () {},
                heroTag: '1',
                child: Icon(Icons.add, color: whiteColor),
              ),
              FloatingActionButton(
                onPressed: () {},
                heroTag: '2',
                backgroundColor: whiteColor,
                child: Icon(Icons.favorite_border, color: primaryColor),
              ),
              FloatingActionButton(
                heroTag: '3',
                onPressed: () {},
                backgroundColor: primaryColor,
                child: Icon(Icons.edit, color: whiteColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
