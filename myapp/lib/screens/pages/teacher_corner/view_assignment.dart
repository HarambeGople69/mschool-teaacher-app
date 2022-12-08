import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myapp/widgets/our_elevated_button.dart';
import 'package:myapp/widgets/our_sized_box.dart';
import 'package:myapp/widgets/our_textfield.dart';

import '../../../controller/student_corner_controller.dart';
import '../../../utils/our_colors.dart';
import '../../../widgets/custom_pdf_display.dart';

class ViewAssignment extends StatefulWidget {
  const ViewAssignment({super.key});

  @override
  State<ViewAssignment> createState() => _ViewAssignmentState();
}

class _ViewAssignmentState extends State<ViewAssignment> {
  TextEditingController _mark_controller = TextEditingController();
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
          child: SingleChildScrollView(
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
                          "Check Assignment",
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
                    horizontal: ScreenUtil().setSp(15),
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
                        OurSizedBox(),
                        Text(
                          "Mathematics",
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(20),
                            color: darklogoColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        OurSizedBox(),
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
                        ListTileTheme(
                          contentPadding: EdgeInsets.all(0),
                          dense: true,
                          child: ExpansionTile(
                            tilePadding: EdgeInsets.zero,
                            childrenPadding: EdgeInsets.zero,
                            expandedCrossAxisAlignment:
                                CrossAxisAlignment.start,
                            expandedAlignment: Alignment.centerLeft,
                            title: Text(
                              "Shyam",
                              style: TextStyle(
                                fontSize: ScreenUtil().setSp(17.5),
                                color: darklogoColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return PdfView(
                                        path: "assets/pdf/english.pdf");
                                  }));
                                },
                                child: Container(
                                  width: double.infinity,
                                  child: Text(
                                    "dummy.pdf",
                                    style: TextStyle(
                                      fontSize: ScreenUtil().setSp(17.5),
                                      color: darklogoColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      "Give Marks",
                                      style: TextStyle(
                                        fontSize: ScreenUtil().setSp(17.5),
                                        fontWeight: FontWeight.w500,
                                        color: darklogoColor,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                    ),
                                  ),
                                ],
                              ),
                              OurSizedBox(),
                              Center(
                                child: OurElevatedButton(
                                  title: "Submit",
                                  function: () {},
                                ),
                              ),
                              OurSizedBox(),
                            ],
                          ),
                        ),
                        ListTileTheme(
                          contentPadding: EdgeInsets.all(0),
                          dense: true,
                          child: ExpansionTile(
                            tilePadding: EdgeInsets.zero,
                            childrenPadding: EdgeInsets.zero,
                            expandedCrossAxisAlignment:
                                CrossAxisAlignment.start,
                            expandedAlignment: Alignment.centerLeft,
                            title: Row(
                              children: [
                                Icon(
                                  Icons.check_rounded,
                                  color: darklogoColor,
                                  size: ScreenUtil().setSp(27.5),
                                ),
                                SizedBox(
                                  width: ScreenUtil().setSp(10),
                                ),
                                Text(
                                  "Ram",
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(17.5),
                                    color: darklogoColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return PdfView(
                                        path: "assets/pdf/english.pdf");
                                  }));
                                },
                                child: Container(
                                  width: double.infinity,
                                  child: Text(
                                    "dummy.pdf",
                                    style: TextStyle(
                                      fontSize: ScreenUtil().setSp(17.5),
                                      color: darklogoColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      "Give Marks",
                                      style: TextStyle(
                                        fontSize: ScreenUtil().setSp(17.5),
                                        fontWeight: FontWeight.w500,
                                        color: darklogoColor,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                    ),
                                  ),
                                ],
                              ),
                              OurSizedBox(),
                              Center(
                                child: OurElevatedButton(
                                  title: "Submit",
                                  function: () {},
                                ),
                              ),
                              OurSizedBox(),
                            ],
                          ),
                        ),
                        ListTileTheme(
                          contentPadding: EdgeInsets.all(0),
                          dense: true,
                          child: ExpansionTile(
                            tilePadding: EdgeInsets.zero,
                            childrenPadding: EdgeInsets.zero,
                            expandedCrossAxisAlignment:
                                CrossAxisAlignment.start,
                            expandedAlignment: Alignment.centerLeft,
                            title: Text(
                              "Sita",
                              style: TextStyle(
                                fontSize: ScreenUtil().setSp(17.5),
                                color: darklogoColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return PdfView(
                                        path: "assets/pdf/english.pdf");
                                  }));
                                },
                                child: Container(
                                  width: double.infinity,
                                  child: Text(
                                    "dummy.pdf",
                                    style: TextStyle(
                                      fontSize: ScreenUtil().setSp(17.5),
                                      color: darklogoColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      "Give Marks",
                                      style: TextStyle(
                                        fontSize: ScreenUtil().setSp(17.5),
                                        fontWeight: FontWeight.w500,
                                        color: darklogoColor,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                    ),
                                  ),
                                ],
                              ),
                              OurSizedBox(),
                              Center(
                                child: OurElevatedButton(
                                  title: "Submit",
                                  function: () {},
                                ),
                              ),
                              OurSizedBox(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
