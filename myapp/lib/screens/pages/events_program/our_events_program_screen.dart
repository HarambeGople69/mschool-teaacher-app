import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/utils/our_colors.dart';
import 'package:myapp/widgets/our_elevated_button.dart';
import 'package:myapp/widgets/our_event_tile.dart';
import 'package:myapp/widgets/our_sized_box.dart';

class EventProgramScreen extends StatefulWidget {
  const EventProgramScreen({Key? key}) : super(key: key);

  @override
  State<EventProgramScreen> createState() => _EventProgramScreenState();
}

class _EventProgramScreenState extends State<EventProgramScreen> {
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
                    Text(
                      "Events & Programs",
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(22.5),
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
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
                      OurEventTile(
                        title: "Football Match",
                        time: "06 jan, 09:00am",
                        desc:
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been  It has survived not only five centuries, Utsav Shrestha",
                      ),
                      OurEventTile(
                        title: "Basketball Match",
                        time: "07 jan, 09:00am",
                        desc:
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been  It has survived not only five centuries, Utsav Shrestha",
                      ),
                      OurEventTile(
                        title: "Cricket Match",
                        time: "08 jan, 09:00am",
                        desc:
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been  It has survived not only five centuries, Utsav Shrestha",
                      ),
                      OurEventTile(
                        title: "Cricket Match",
                        time: "08 jan, 09:00am",
                        desc:
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been  It has survived not only five centuries, Utsav Shrestha",
                      ),
                      OurEventTile(
                        title: "Cricket Match",
                        time: "08 jan, 09:00am",
                        desc:
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been  It has survived not only five centuries, Utsav Shrestha",
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
