import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class AppWidgets {
  static void showLoading(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(.05),
      builder: (context) => Center(
        child: Container(
          margin: EdgeInsets.all(16.w),
          height: 350.h,
          width: ScreenUtil.defaultSize.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
              boxShadow: [BoxShadow(color: Colors.black.withOpacity(.6))]),
          child: Lottie.asset('assets/anim/loading.json',
              fit: BoxFit.cover, height: 250.h, width: 350.h),
        ),
      ),
    );
  }

  static void showSnackbar(BuildContext context, String data) {
    final _snackBar = SnackBar(content: Text(data));
    ScaffoldMessenger.of(context).showSnackBar(_snackBar);
  }
}
