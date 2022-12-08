import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../utils/our_colors.dart';
import 'our_sized_box.dart';

class OurfeedTile extends StatefulWidget {
  final String userName;
  final String caption;
  final Function commentfunction;
  final String timeago;
  const OurfeedTile(
      {Key? key,
      required this.userName,
      required this.caption,
      required this.commentfunction,
      required this.timeago})
      : super(key: key);

  @override
  State<OurfeedTile> createState() => _OurfeedTileState();
}

class _OurfeedTileState extends State<OurfeedTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage:
                        AssetImage("assets/images/profile_holder.png"),
                    radius: ScreenUtil().setSp(20),
                  ),
                  SizedBox(
                    width: ScreenUtil().setSp(15),
                  ),
                  Text(
                    widget.userName,
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(16.5),
                      color: darklogoColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              // OurSizedBox(),
              Image.asset(
                "assets/images/placeholder.png",
                height: ScreenUtil().setSp(200),
                width: double.infinity,
              ),
              OurSizedBox(),
              Text(
                widget.caption,
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(17.5),
                  color: darklogoColor,
                ),
              ),
              OurSizedBox(),
              Row(
                children: [
                  Row(
                    children: [
                      Text(
                        1.toString(),
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(17.5),
                        ),
                      ),
                      SizedBox(
                        width: ScreenUtil().setSp(5),
                      ),
                      Icon(
                        Icons.favorite_outline,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: ScreenUtil().setSp(15),
                  ),
                  InkWell(
                    onTap: () {
                      widget.commentfunction();
                    },
                    child: Row(
                      children: [
                        Text(
                          1.toString(),
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(17.5),
                            color: darklogoColor,
                          ),
                        ),
                        SizedBox(
                          width: ScreenUtil().setSp(5),
                        ),
                        Icon(
                          // Icons.list_alt_outlined,
                          MdiIcons.chatOutline,
                          color: darklogoColor,
                          size: ScreenUtil().setSp(22.5),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    widget.timeago,
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(15),
                      color: darklogoColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        OurSizedBox(),
      ],
    );
  }
}
