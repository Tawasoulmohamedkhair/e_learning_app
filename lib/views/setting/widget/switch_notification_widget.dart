import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';

class SwitchNotification extends StatefulWidget {
  SwitchNotification(this.title, this.title2, {super.key});
  final String title;
  final String title2;

  @override
  State<SwitchNotification> createState() => _SwitchNotificationState();
}

class _SwitchNotificationState extends State<SwitchNotification> {
  @override
  Widget build(BuildContext context) {
    var _value = true;
    return Container(
      padding: EdgeInsets.only(left: 30, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: AppFont.fontsizew50014,
              ),
              Text(
                widget.title2,
                style: AppFont.fontsize18w400,
              ),
            ],
          ),
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Switch(
              activeTrackColor: AppColor.bluecolor,
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
              activeColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
