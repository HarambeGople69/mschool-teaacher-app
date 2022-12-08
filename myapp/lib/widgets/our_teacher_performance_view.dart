import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/widgets/our_sized_box.dart';

import '../utils/our_colors.dart';

class TeacherPerformanceTile extends StatefulWidget {
  final String title;
  final String workdays;
  final String presentDays;
  const TeacherPerformanceTile(
      {super.key,
      required this.title,
      required this.workdays,
      required this.presentDays});

  @override
  State<TeacherPerformanceTile> createState() => _TeacherPerformanceTileState();
}

class _TeacherPerformanceTileState extends State<TeacherPerformanceTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setSp(10),
        vertical: ScreenUtil().setSp(10),
      ),
      margin: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setSp(2.5),
        vertical: ScreenUtil().setSp(5),
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: darklogoColor,
        ),
        borderRadius: BorderRadius.circular(
          ScreenUtil().setSp(12.5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(
              fontSize: ScreenUtil().setSp(22.5),
              fontWeight: FontWeight.w500,
              color: darklogoColor,
            ),
          ),
          Divider(
            color: darklogoColor,
          ),
          OurSizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    Text(
                      "Working days:",
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(22.5),
                        color: darklogoColor,
                      ),
                    ),
                    OurSizedBox(),
                    Text(
                      widget.workdays,
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(22.5),
                        fontWeight: FontWeight.w500,
                        color: darklogoColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: ScreenUtil().setSp(1),
                color: darklogoColor,
                height: ScreenUtil().setSp(50),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      "Present days:",
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(22.5),
                        color: darklogoColor,
                      ),
                    ),
                    OurSizedBox(),
                    Text(
                      widget.presentDays,
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(22.5),
                        fontWeight: FontWeight.w500,
                        color: darklogoColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
