import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/utils/our_colors.dart';
import 'package:myapp/widgets/our_elevated_button.dart';
import 'package:myapp/widgets/our_sized_box.dart';
import 'package:myapp/widgets/our_textfield.dart';

class PublishFeeds extends StatefulWidget {
  const PublishFeeds({super.key});

  @override
  State<PublishFeeds> createState() => _PublishFeedsState();
}

class _PublishFeedsState extends State<PublishFeeds> {
  TextEditingController _captionController = TextEditingController();
  List<File> images = [];

  void selectImages() async {
    var res = await pickImages();
    setState(() {
      images = res;
    });
  }

  Future<List<File>> pickImages() async {
    List<File> images = [];
    try {
      var files = await FilePicker.platform.pickFiles(
        type: FileType.image,
        // allowMultiple: true,
      );
      if (files != null && files.files.isNotEmpty) {
        images.add(File(files.files[0].path!));
      } else {}
    } catch (e) {
      print(e);
      print("Error occured");
    }
    return images;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          OurSizedBox(),
          OurSizedBox(),
          OurSizedBox(),
          images.isEmpty
              ? GestureDetector(
                  onTap: () {
                    selectImages();
                  },
                  child: DottedBorder(
                    color: darklogoColor,
                    borderType: BorderType.RRect,
                    radius: Radius.circular(
                      ScreenUtil().setSp(15),
                    ),
                    dashPattern: [10, 4],
                    strokeCap: StrokeCap.round,
                    child: Container(
                      padding: EdgeInsets.all(
                        ScreenUtil().setSp(20),
                      ),
                      width: double.infinity,
                      height: ScreenUtil().setSp(140),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          ScreenUtil().setSp(15),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.folder_open,
                            size: ScreenUtil().setSp(35),
                            color: darklogoColor,
                          ),
                          OurSizedBox(),
                          Text(
                            "Select Image",
                            style: TextStyle(
                              color: darklogoColor,
                              fontSize: ScreenUtil().setSp(
                                17.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              : Image.file(
                  images[0],
                  height: ScreenUtil().setSp(250),
                  width: double.infinity,
                ),
          OurSizedBox(),
          OurSizedBox(),
          CustomTextField(
            controller: _captionController,
            validator: (value) {},
            title: "Add Caption",
            type: TextInputType.name,
            icon: Icons.description,
            number: 1,
          ),
          OurSizedBox(),
          OurSizedBox(),
          OurElevatedButton(
            title: "Share",
            function: () {},
          ),
        ],
      ),
    );
  }
}
