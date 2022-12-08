import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_dropdown_search/flutter_dropdown_search.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/widgets/our_textfield.dart';

import '../../../models/assignment_file_model.dart';
import '../../../utils/our_colors.dart';
import '../../../utils/utils.dart';
import '../../../widgets/custom_pdf_display.dart';
import '../../../widgets/our_elevated_button.dart';
import '../../../widgets/our_sized_box.dart';

class AddAssignment extends StatefulWidget {
  const AddAssignment({super.key});

  @override
  State<AddAssignment> createState() => _AddAssignmentState();
}

class _AddAssignmentState extends State<AddAssignment> {
  final fromEventController = TextEditingController();
  final toEventController = TextEditingController();
  late DateTime fromdate;
  late DateTime todate;
  List<AssignmentFileModel> myfiles = [];
  TextEditingController classController = TextEditingController();
  TextEditingController subjetController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      // uid = FirebaseAuth.instance.currentUser!.uid;
      fromdate = DateTime.now().add(
        Duration(minutes: 1),
      );
      fromEventController.text = Utils().customDate(fromdate);
      todate = DateTime.now().add(
        Duration(
          hours: 2,
        ),
      );
      toEventController.text = Utils().customDate(todate);
    });
  }

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
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setSp(15),
            ),
            child: TextFormField(
              controller: fromEventController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: logoColor,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: logoColor,
                  ),
                ),

                // focusedBorder: InputBorder.none,
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.symmetric(
                  vertical: ScreenUtil().setSp(10),
                  horizontal: ScreenUtil().setSp(2),
                ),

                isDense: true,
                hintText: "From",

                hintStyle: TextStyle(
                  color: darklogoColor,
                  fontSize: ScreenUtil().setSp(
                    17.5,
                  ),
                ),

                errorStyle: TextStyle(
                  fontSize: ScreenUtil().setSp(
                    13.5,
                  ),
                ),
              ),
              readOnly: true,
              onTap: () async {
                DateTime initialTime = DateTime.now();
                DateTime? date = await showDatePicker(
                  context: context,
                  // helpText:"Help",

                  initialDate: fromdate,
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2050),
                );
                if (date == null) {
                  return null;
                }
                final time = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay(
                      hour: initialTime.hour, minute: initialTime.minute),
                );
                if (time == null) {
                  return null;
                }
                setState(() {
                  fromdate = DateTime(
                    date.year,
                    date.month,
                    date.day,
                    time.hour,
                    time.minute,
                  );
                  fromEventController.text = Utils().customDate(fromdate);
                });
              },
            ),
          ),
          OurSizedBox(),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setSp(15),
            ),
            child: TextField(
              controller: toEventController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: logoColor,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: logoColor,
                  ),
                ),

                // focusedBorder: InputBorder.none,
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.symmetric(
                  vertical: ScreenUtil().setSp(10),
                  horizontal: ScreenUtil().setSp(2),
                ),

                isDense: true,
                hintText: "To",

                hintStyle: TextStyle(
                  color: darklogoColor,
                  fontSize: ScreenUtil().setSp(
                    17.5,
                  ),
                ),

                errorStyle: TextStyle(
                  fontSize: ScreenUtil().setSp(
                    13.5,
                  ),
                ),
              ),
              readOnly: true,
              onTap: () async {
                DateTime initialTime = DateTime.now();
                DateTime? date = await showDatePicker(
                  context: context,
                  initialDate: fromdate,
                  firstDate: fromdate,
                  lastDate: DateTime(2050),
                );
                if (date == null) {
                  return null;
                }
                final time = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay(
                      hour: initialTime.hour, minute: initialTime.minute),
                );
                if (time == null) {
                  return null;
                }
                setState(() {
                  todate = DateTime(
                    date.year,
                    date.month,
                    date.day,
                    time.hour,
                    time.minute,
                  );
                  toEventController.text = Utils().customDate(todate);
                });
              },
            ),
          ),
          OurSizedBox(),
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
