import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:example_repo/Views/widgets/custom_text.dart';
import 'package:example_repo/Views/widgets/image_avatar.dart';
import 'package:example_repo/data/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customAppBar({
  image,
  height = 50.0,
  width = 720,
}) {
  return Container(
    height: 300.h,
    width: Get.width,
    color: backGroundColor,
    child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.only(
                // top: 128.h,
                ),
            child: customText(
              text: "Welcome",
              fontSize: 48.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (image != null)
            imageAvatar(
              image,
              height: 150.h,
              width: 150.w,
            ),
        ],
      ),
    ),
  );
}
