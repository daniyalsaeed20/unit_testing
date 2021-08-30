import 'package:flutter/material.dart';
import 'package:example_repo/data/colors.dart';

Widget imageAvatar(
  imageLink, {
  width = 100.0,
  height = 100.0,
}) {
  return Container(
    width: width,
    height: height,
    margin: EdgeInsets.only(
        // top: 48.h,
        // bottom: 128.h,
        ),
    clipBehavior: Clip.antiAlias,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5),
          spreadRadius: 3,
          blurRadius: 5,
          offset: Offset(0, 2),
        ),
      ],
      color: themeColor,
      shape: BoxShape.circle,
      image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(
          imageLink,
        ),
      ),
    ),
  );
}
