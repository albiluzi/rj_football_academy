import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:myteam/config/colors.dart';

class TryAgainButton extends StatelessWidget {
  Function action;

  TryAgainButton({this.action});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton.icon(
            color: Theme.of(context).accentColor,
            onPressed: action,
            icon: Icon(
              LineIcons.refresh,
              color: Colors.white,
            ),
            label: Text(
              "Try Again",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
