import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_demo_question/Controllers/app_controller.dart';
import 'package:test_demo_question/Controllers/brewery_controller.dart';
import 'package:test_demo_question/Controllers/db_controller.dart';
import 'package:test_demo_question/Views/brewery_details_page.dart';
import 'package:test_demo_question/Views/cards/brewery_list_card.dart';
import 'package:test_demo_question/Views/widgets/custom_app_bar.dart';
import 'package:test_demo_question/Views/widgets/search_bar.dart';
import 'package:test_demo_question/data/colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      init: AppController(),
      builder: (appController) {
        return Material(
          child: Container(
            height: Get.height,
            width: Get.width,
            color: backGroundColor,
            child: Column(
              children: [
                customAppBar(
                  image: appController.appImage,
                ),
                Column(
                  children: [
                    GetBuilder<BreweryController>(
                        init: BreweryController(),
                        builder: (breweryController) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal: 16,
                            ),
                            child: searchBar(
                              breweryController: breweryController,
                            ),
                          );
                        }),
                    Container(
                      width: Get.width,
                      height: Get.height - 500.h,
                      child: GetBuilder<BreweryController>(
                          init: BreweryController(),
                          builder: (breweryController) {
                            return breweryController.breweryModelList.length ==
                                    0
                                ? Center(
                                    child: CircularProgressIndicator(
                                      color: themeColor,
                                    ),
                                  )
                                : SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        if (breweryController.searchField != "")
                                          for (var brewery in breweryController
                                              .breweryModelList)
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: brewery.name
                                                        .toLowerCase()
                                                        .contains(
                                                            breweryController
                                                                .searchField
                                                                .toLowerCase())
                                                    ? 16.h
                                                    : 0,
                                                left: brewery.name
                                                        .toLowerCase()
                                                        .contains(
                                                            breweryController
                                                                .searchField
                                                                .toLowerCase())
                                                    ? 32.w
                                                    : 0,
                                                right: brewery.name
                                                        .toLowerCase()
                                                        .contains(
                                                            breweryController
                                                                .searchField
                                                                .toLowerCase())
                                                    ? 32.w
                                                    : 0,
                                                bottom: brewery.name
                                                        .toLowerCase()
                                                        .contains(
                                                            breweryController
                                                                .searchField
                                                                .toLowerCase())
                                                    ? 16.h
                                                    : 0,
                                              ),
                                              child: brewery.name
                                                      .toLowerCase()
                                                      .contains(
                                                          breweryController
                                                              .searchField
                                                              .toLowerCase())
                                                  ? breweryListCard(
                                                      name: brewery.name,
                                                      city: brewery.city,
                                                      type: brewery.breweryType,
                                                      function: () {
                                                        breweryController
                                                                .breweryModel =
                                                            brewery;
                                                        Get.to(
                                                            BreweryDetailsPage());
                                                      },
                                                    )
                                                  : Container(),
                                            )
                                        else if (breweryController
                                                .searchField ==
                                            "")
                                          for (var brewery in breweryController
                                              .breweryModelList)
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 16.h,
                                                left: 32.w,
                                                right: 32.w,
                                                bottom: 16.h,
                                              ),
                                              child: breweryListCard(
                                                name: brewery.name,
                                                city: brewery.city,
                                                type: brewery.breweryType,
                                                function: () {
                                                  breweryController
                                                      .breweryModel = brewery;
                                                  Get.to(BreweryDetailsPage());
                                                },
                                              ),
                                            )
                                      ],
                                    ),
                                  );
                            // return ListView.builder(
                            //   itemCount:
                            //       breweryController.breweryModelList.length,
                            //   itemBuilder: (BuildContext context, int index) {
                            // return Padding(
                            //   padding: EdgeInsets.only(
                            //     top: 16.h,
                            //     left: 32.w,
                            //     right: 32.w,
                            //     bottom: 16.h,
                            //   ),
                            //   child: breweryListCard(
                            //       name: breweryController
                            //           .breweryModelList[index].name,
                            //       city: breweryController
                            //           .breweryModelList[index].city,
                            //       type: breweryController
                            //           .breweryModelList[index].breweryType,
                            //       function: () {
                            //         breweryController.breweryModel =
                            //             breweryController
                            //                 .breweryModelList[index];
                            //         Get.to(BreweryDetailsPage());
                            //       }),
                            // );
                            //   },
                            // );
                          }),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
