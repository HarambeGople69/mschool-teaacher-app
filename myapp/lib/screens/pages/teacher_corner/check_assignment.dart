import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/screens/pages/teacher_corner/view_assignment.dart';
import 'package:page_transition/page_transition.dart';

import '../../../utils/our_colors.dart';
import '../../../widgets/our_elevated_button.dart';
import '../../../widgets/our_sized_box.dart';

class CheckAssignment extends StatefulWidget {
  const CheckAssignment({super.key});

  @override
  State<CheckAssignment> createState() => _CheckAssignmentState();
}

class _CheckAssignmentState extends State<CheckAssignment> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OurSizedBox(),
        OurSizedBox(),
        OurSizedBox(),
        Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setSp(10),
                vertical: ScreenUtil().setSp(10),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: logoColor,
                          borderRadius: BorderRadius.circular(
                            ScreenUtil().setSp(5),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setSp(2.5),
                          vertical: ScreenUtil().setSp(2.5),
                        ),
                        child: Text(
                          "Mathematics",
                          style: TextStyle(
                              fontSize: ScreenUtil().setSp(17.5),
                              color: darklogoColor),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: logoColor,
                          borderRadius: BorderRadius.circular(
                            ScreenUtil().setSp(5),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setSp(2.5),
                          vertical: ScreenUtil().setSp(2.5),
                        ),
                        child: Text(
                          "1/12/2022",
                          style: TextStyle(
                              fontSize: ScreenUtil().setSp(17.5),
                              color: darklogoColor),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setSp(5),
                  ),
                  Text(
                    "Surface Area and Volume",
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(17.5),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setSp(5),
                  ),
                  Divider(
                    color: darklogoColor,
                  ),
                  Center(
                    child: OurElevatedButton(
                      title: "VIEW ASSIGNMENT",
                      function: () {
                        print("Hello World");
                        Navigator.push(
                          context,
                          PageTransition(
                            child: ViewAssignment(),
                            type: PageTransitionType.leftToRight,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            OurSizedBox(),
          ],
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setSp(10),
                vertical: ScreenUtil().setSp(10),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: logoColor,
                          borderRadius: BorderRadius.circular(
                            ScreenUtil().setSp(5),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setSp(2.5),
                          vertical: ScreenUtil().setSp(2.5),
                        ),
                        child: Text(
                          "English",
                          style: TextStyle(
                              fontSize: ScreenUtil().setSp(17.5),
                              color: darklogoColor),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: logoColor,
                          borderRadius: BorderRadius.circular(
                            ScreenUtil().setSp(5),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setSp(2.5),
                          vertical: ScreenUtil().setSp(2.5),
                        ),
                        child: Text(
                          "1/12/2022",
                          style: TextStyle(
                              fontSize: ScreenUtil().setSp(17.5),
                              color: darklogoColor),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setSp(5),
                  ),
                  Text(
                    "Surface Area and Volume",
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(17.5),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setSp(5),
                  ),
                  Divider(
                    color: darklogoColor,
                  ),
                  Center(
                    child: OurElevatedButton(
                      title: "VIEW ASSIGNMENT",
                      function: () {
                        print("Hello World");
                        Navigator.push(
                          context,
                          PageTransition(
                            child: ViewAssignment(),
                            type: PageTransitionType.leftToRight,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            OurSizedBox(),
          ],
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setSp(10),
                vertical: ScreenUtil().setSp(10),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: logoColor,
                          borderRadius: BorderRadius.circular(
                            ScreenUtil().setSp(5),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setSp(2.5),
                          vertical: ScreenUtil().setSp(2.5),
                        ),
                        child: Text(
                          "Social",
                          style: TextStyle(
                              fontSize: ScreenUtil().setSp(17.5),
                              color: darklogoColor),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: logoColor,
                          borderRadius: BorderRadius.circular(
                            ScreenUtil().setSp(5),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setSp(2.5),
                          vertical: ScreenUtil().setSp(2.5),
                        ),
                        child: Text(
                          "1/12/2022",
                          style: TextStyle(
                              fontSize: ScreenUtil().setSp(17.5),
                              color: darklogoColor),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setSp(5),
                  ),
                  Text(
                    "Surface Area and Volume",
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(17.5),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setSp(5),
                  ),
                  Divider(
                    color: darklogoColor,
                  ),
                  Center(
                    child: OurElevatedButton(
                      title: "VIEW ASSIGNMENT",
                      function: () {
                        print("Hello World");
                        Navigator.push(
                          context,
                          PageTransition(
                            child: ViewAssignment(),
                            type: PageTransitionType.leftToRight,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            OurSizedBox(),
          ],
        ),
      ],
    );
  }
}
