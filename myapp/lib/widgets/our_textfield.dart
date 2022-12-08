import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/our_colors.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode? start;
  final FocusNode? end;
  final Function()? ontap;
  final bool? readonly;
  final Function(String) validator;
  final Function(String)? onchange;
  final IconData? icon;
  final TextInputType type;
  final String title;
  final int? length;
  final int number;
  final String? initialValue;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.validator,
    this.icon,
    this.onchange,
    required this.title,
    required this.type,
    this.length,
    this.start,
    this.end,
    required this.number,
    this.initialValue,
    this.ontap,
    this.readonly,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setSp(15),
      ),
      height: ScreenUtil().setSp(40),
      child: TextFormField(
        // inputFormatters: [
        //   LengthLimitingTextInputFormatter(10),
        // ],
        scrollPadding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        cursorColor: darklogoColor,
        controller: widget.controller,
        initialValue: widget.initialValue,
        focusNode: widget.start,
        onEditingComplete: () {
          if (widget.number == 0) {
            FocusScope.of(context).requestFocus(
              widget.end,
            );
          } else {
            FocusScope.of(context).unfocus();
          }
        },
        onChanged: (String value) {
          // widget.onchange!(value) ?? () {};
        },
        validator: (String? value) => widget.validator(value!),
        style: TextStyle(
          fontSize: ScreenUtil().setSp(15),
          color: darklogoColor,
        ),
        keyboardType: widget.type,
        maxLines: widget.length,
        onTap: widget.ontap ?? () {},
        readOnly: widget.readonly ?? false,
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
          hintText: widget.title,

          hintStyle: TextStyle(
            color: darklogoColor,
            fontSize: ScreenUtil().setSp(
              17.5,
            ),
          ),
          prefixIcon: Icon(
            widget.icon,
            size: ScreenUtil().setSp(25),
            color: darklogoColor,
          ),
          errorStyle: TextStyle(
            fontSize: ScreenUtil().setSp(
              13.5,
            ),
          ),
        ),
        // maxLength: 10,
      ),
    );
  }
}
