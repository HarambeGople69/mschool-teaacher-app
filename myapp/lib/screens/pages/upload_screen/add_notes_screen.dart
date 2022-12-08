import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_dropdown_search/flutter_dropdown_search.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/widgets/our_elevated_button.dart';
import 'package:myapp/widgets/our_sized_box.dart';
import 'package:myapp/widgets/our_textfield.dart';

import '../../../models/assignment_file_model.dart';
import '../../../utils/our_colors.dart';
import '../../../widgets/custom_pdf_display.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({super.key});

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  List<AssignmentFileModel> myfiles = [];
  TextEditingController classController = TextEditingController();
  TextEditingController subjetController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          OurSizedBox(),
          OurSizedBox(),
          OurSizedBox(),
          CustomTextField(
            controller: subjetController,
            validator: (value) {},
            title: "Subject",
            type: TextInputType.name,
            number: 1,
          ),
          OurSizedBox(),
          CustomTextField(
            controller: titleController,
            validator: (value) {},
            title: "Title",
            type: TextInputType.name,
            number: 1,
          ),
          OurSizedBox(),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setSp(15),
            ),
            child: FlutterDropdownSearch(
              hintText: "Class",
              hintStyle: TextStyle(
                fontSize: ScreenUtil().setSp(17.5),
                fontWeight: FontWeight.w400,
                // color: logoColor,
              ),
              style: TextStyle(
                fontSize: ScreenUtil().setSp(17.5),
                fontWeight: FontWeight.w400,
                // color: logoColor,
              ),
              textController: classController,
              items: [
                "Class 1A",
                "Class 1B",
                "Class 2A",
                "Class 2B",
                "Class 3A",
                "Class 3B"
              ],
              dropdownHeight: 300,
            ),
          ),
          OurSizedBox(),
          myfiles.isEmpty
              ? Center(
                  child: Text(
                    "No files selected",
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(17.5),
                      color: darklogoColor,
                    ),
                  ),
                )
              : Column(
                  children: myfiles
                      .map((e) => InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return PdfView(
                                  notassest: true,
                                  path: e.path,
                                );
                              }));
                            },
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.picture_as_pdf,
                                      color: darklogoColor,
                                      size: ScreenUtil().setSp(25),
                                    ),
                                    SizedBox(
                                      width: ScreenUtil().setSp(15),
                                    ),
                                    Expanded(
                                      child: Text(
                                        e.name,
                                        style: TextStyle(
                                          fontSize: ScreenUtil().setSp(17.5),
                                          color: darklogoColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                OurSizedBox(),
                              ],
                            ),
                          ))
                      .toList(),
                ),
          OurSizedBox(),
          OurElevatedButton(
            title: "Upload",
            function: () async {
              FilePickerResult? result = await FilePicker.platform.pickFiles(
                type: FileType.custom,
                allowedExtensions: [
                  'pdf',
                ],
              );
              if (result != null) {
                print("===================");
                PlatformFile file = result.files.first;
                setState(() {
                  AssignmentFileModel assignmentFileModel = AssignmentFileModel(
                    name: file.name,
                    path: file.path!,
                  );
                  myfiles.add(
                    assignmentFileModel,
                  );
                });
              }
            },
          ),
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
