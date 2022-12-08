import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/widgets/our_sized_box.dart';

import '../../../utils/our_colors.dart';

class OurEventDetailScreen extends StatefulWidget {
  final String title;
  final String time;
  final String desc;
  final String uid;
  const OurEventDetailScreen(
      {Key? key,
      required this.title,
      required this.time,
      required this.desc,
      required this.uid})
      : super(key: key);

  @override
  State<OurEventDetailScreen> createState() => _OurEventDetailScreenState();
}

class _OurEventDetailScreenState extends State<OurEventDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setSp(10),
            vertical: ScreenUtil().setSp(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Hero(
                    tag: "Hero-image-${widget.uid}",
                    child: Material(
                      child: Image.asset(
                        "assets/images/placeholder.png",
                        height: ScreenUtil().setSp(200),
                        width: double.infinity,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: darklogoColor,
                      size: ScreenUtil().setSp(25),
                    ),
                  ),
                ],
              ),
              OurSizedBox(),
              Hero(
                tag: "Hero-title-${widget.uid}",
                child: Material(
                  child: Text(
                    widget.title,
                    style: TextStyle(
                      color: darklogoColor,
                      fontSize: ScreenUtil().setSp(17.5),
                    ),
                  ),
                ),
              ),
              OurSizedBox(),
              Hero(
                tag: "Hero-timer-${widget.uid}",
                child: Material(
                  child: Row(
                    children: [
                      Icon(
                        Icons.timer,
                        color: darklogoColor,
                        size: ScreenUtil().setSp(20),
                      ),
                      SizedBox(
                        width: ScreenUtil().setSp(10),
                      ),
                      Text(
                        widget.time,
                        style: TextStyle(
                          color: darklogoColor,
                          fontSize: ScreenUtil().setSp(15),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                color: darklogoColor,
              ),
              Hero(
                tag: "Hero-desc-${widget.uid}",
                child: Material(
                  child: Text(
                    widget.desc,
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(17),
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
