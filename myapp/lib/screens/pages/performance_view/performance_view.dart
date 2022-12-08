import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/utils/styles.dart';
import 'package:myapp/widgets/our_sized_box.dart';
import 'package:myapp/widgets/our_sized_height.dart';
import 'package:myapp/widgets/our_teacher_performance_view.dart';

import '../../../utils/our_colors.dart';

class AcademicPerformance extends StatefulWidget {
  const AcademicPerformance({Key? key}) : super(key: key);

  @override
  _AcademicPerformanceState createState() => _AcademicPerformanceState();
}

class _AcademicPerformanceState extends State<AcademicPerformance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff7294CF),
              Color(0xff2855AE),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.125,
                child: Row(
                  children: [
                    SizedBox(
                      width: ScreenUtil().setSp(15),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: ScreenUtil().setSp(30),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: ScreenUtil().setSp(20),
                    ),
                    Center(
                      child: Text(
                        "Teacher Performance",
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(22.5),
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setSp(12.5),
                  vertical: ScreenUtil().setSp(15),
                ),
                height: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).viewPadding.top -
                    MediaQuery.of(context).size.height * 0.125,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      ScreenUtil().setSp(50),
                    ),
                    topRight: Radius.circular(
                      ScreenUtil().setSp(50),
                    ),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TeacherPerformanceTile(
                        title: "January",
                        workdays: "30",
                        presentDays: "15",
                      ),
                      TeacherPerformanceTile(
                        title: "February",
                        workdays: "30",
                        presentDays: "15",
                      ),
                      TeacherPerformanceTile(
                        title: "March",
                        workdays: "30",
                        presentDays: "15",
                      ),
                      TeacherPerformanceTile(
                        title: "April",
                        workdays: "30",
                        presentDays: "15",
                      ),
                      TeacherPerformanceTile(
                        title: "May",
                        workdays: "30",
                        presentDays: "15",
                      ),
                      TeacherPerformanceTile(
                        title: "June",
                        workdays: "30",
                        presentDays: "15",
                      ),
                      TeacherPerformanceTile(
                        title: "July",
                        workdays: "30",
                        presentDays: "15",
                      ),
                      TeacherPerformanceTile(
                        title: "August",
                        workdays: "30",
                        presentDays: "15",
                      ),
                      TeacherPerformanceTile(
                        title: "September",
                        workdays: "30",
                        presentDays: "15",
                      ),
                      TeacherPerformanceTile(
                        title: "October",
                        workdays: "30",
                        presentDays: "15",
                      ),
                      TeacherPerformanceTile(
                        title: "November",
                        workdays: "30",
                        presentDays: "15",
                      ),
                      TeacherPerformanceTile(
                        title: "December",
                        workdays: "30",
                        presentDays: "15",
                      ),
                    ],
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
