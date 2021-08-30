import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_demo_question/Controllers/db_controller.dart';
import 'package:test_demo_question/Views/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Color(0xFF5B9313),
      // ),
      home: landingPage(context),
    );
  }
}

landingPage(BuildContext context) {
  // final getStorage = new GetStorage();
  // bool checkViewStatus = getStorage.read(onBoardController.onBoardKey);
  // if (checkViewStatus == true) {
  return ScreenUtilInit(designSize: Size(720, 1600), builder: () {
    final DbController dbController = Get.put(
      DbController(),
    );
  dbController.getBreweryData();
    return HomePage();
  });
  // } else {
  //   return ScreenUtilInit(
  //       designSize: Size(720, 1600), builder: () => BoardingScreens());
  // }
}
