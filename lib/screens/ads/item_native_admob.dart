import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_admob/flutter_native_admob.dart';
import 'package:flutter_native_admob/native_admob_options.dart';

class AdmobNativeAdItem extends StatelessWidget {
  String adUnitID;

  AdmobNativeAdItem({this.adUnitID});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black54.withOpacity(0.2),
                offset: Offset(0, 0),
                blurRadius: 5)
          ]),
      child: NativeAdmob(
        options: NativeAdmobOptions(
            showMediaContent: true,
            adLabelTextStyle: NativeTextStyle(color: Colors.white),
            headlineTextStyle: NativeTextStyle(
                color: Theme.of(context).textTheme.subtitle1.color),
            bodyTextStyle: NativeTextStyle(
                color: Theme.of(context).textTheme.subtitle2.color),
            storeTextStyle: NativeTextStyle(
                color: Theme.of(context).textTheme.subtitle2.color),
            priceTextStyle:
                NativeTextStyle(color: Theme.of(context).accentColor),
            advertiserTextStyle: NativeTextStyle(
                color: Theme.of(context).textTheme.subtitle2.color),
            callToActionStyle: NativeTextStyle(
                color: Colors.white,
                backgroundColor: Theme.of(context).accentColor)),
        // Your ad unit id
        adUnitID: adUnitID,
        numberAds: 1,
        type: NativeAdmobType.full,
      ),
    );
  }
}
