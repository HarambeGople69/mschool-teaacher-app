import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myapp/utils/styles.dart';
import 'package:myapp/widgets/our_fee_pay_tile.dart';
import 'package:myapp/widgets/our_sized_box.dart';

import '../../../controller/upload_controller.dart';
import '../../../utils/our_colors.dart';
import '../../../widgets/our_fee_download_tile.dart';
import '../../../widgets/our_feed_tile.dart';
import '../teacher_corner/check_assignment.dart';
import '../teacher_corner/publish_feeds.dart';
import 'add_assignment.dart';
import 'add_notes_screen.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({Key? key}) : super(key: key);

  @override
  _UploadScreenState createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  List<Widget> display = [
    AddNoteScreen(),
    AddAssignment(),
  ];
  @override
  Widget build(BuildContext context) {
    return Obx(() => GestureDetector(
        onHorizontalDragEnd: (dragDetail) {
          if (dragDetail.velocity.pixelsPerSecond.dx < 1) {
            if (Get.find<UploadController>().index.value < 1) {
              print(Get.find<UploadController>().index.value);
              print("Right swipe");
              Get.find<UploadController>()
                  .changeIndex(Get.find<UploadController>().index.value + 1);
            }
          } else {
            if (Get.find<UploadController>().index.value > 0) {
              print(Get.find<UploadController>().index.value);
              print("Left swipe");
              Get.find<UploadController>()
                  .changeIndex(Get.find<UploadController>().index.value - 1);
            }
          }
        },
        child: Scaffold(
            body: SingleChildScrollView(
          child: Container(
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
                child: Column(children: [
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
                        "Upload Screen",
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
                  horizontal: ScreenUtil().setSp(7.5),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.find<UploadController>().changeIndex(0);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color:
                                    Get.find<UploadController>().index.value ==
                                            0
                                        ? darklogoColor
                                        : Colors.transparent,
                                borderRadius: BorderRadius.circular(
                                  ScreenUtil().setSp(15),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: ScreenUtil().setSp(10),
                                vertical: ScreenUtil().setSp(10),
                              ),
                              child: Text(
                                "Add notes",
                                style: TextStyle(
                                  fontSize: ScreenUtil().setSp(17.5),
                                  color: Get.find<UploadController>()
                                              .index
                                              .value ==
                                          0
                                      ? Colors.white
                                      : darklogoColor,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.find<UploadController>().changeIndex(1);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color:
                                    Get.find<UploadController>().index.value ==
                                            1
                                        ? darklogoColor
                                        : Colors.transparent,
                                borderRadius: BorderRadius.circular(
                                  ScreenUtil().setSp(15),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: ScreenUtil().setSp(10),
                                vertical: ScreenUtil().setSp(10),
                              ),
                              child: Text(
                                "Add assignment",
                                style: TextStyle(
                                  fontSize: ScreenUtil().setSp(17.5),
                                  color: Get.find<UploadController>()
                                              .index
                                              .value ==
                                          1
                                      ? Colors.white
                                      : darklogoColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      display[Get.find<UploadController>().index.value],
                    ],
                  ),
                ),
              ),
            ])),
          ),
        ))));
  }
}
