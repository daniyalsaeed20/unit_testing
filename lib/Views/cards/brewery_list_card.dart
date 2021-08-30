import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_demo_question/Views/widgets/custom_text.dart';
import 'package:test_demo_question/Views/widgets/image_avatar.dart';

Widget breweryListCard({
  function,
  name = "BreweryName",
  type = "Type",
  city = "City",
  image = "assets/beerLogo.png",
}) {
  return InkWell(
    onTap: function,
    child: GlassmorphicContainer(
      border: 1,
      blur: 3,
      borderRadius: 5,
      linearGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFF000000).withOpacity(0.1),
          Color(0xFFAAAAAA).withOpacity(0.05),
        ],
        stops: [
          0.1,
          1,
        ],
      ),
      borderGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFF000000).withOpacity(0.5),
          Color((0xFFAAAAAA)).withOpacity(0.5),
        ],
      ),
      height: 197.h,
      width: Get.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 450.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customText(
                  text: "Name: $name",
                  textColor: Color(0xFFAFAFAF),
                  fontSize: 36.sp,
                  align: TextAlign.start,
                  maxLines: 1,
                ),
                customText(
                  text: "Type: $type",
                  textColor: Color(0xFFAFAFAF),
                  fontSize: 36.sp,
                ),
                customText(
                  text: "City: $city",
                  textColor: Color(0xFFAFAFAF),
                  fontSize: 36.sp,
                ),
              ],
            ),
          ),
          imageAvatar(
            image,
            height: 100.h,
            width: 100.w,
          ),
        ],
      ),
    ),
  );
}
