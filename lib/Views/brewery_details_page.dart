import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:example_repo/Controllers/brewery_controller.dart';
import 'package:example_repo/Views/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BreweryDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        child: GetBuilder<BreweryController>(
            init: BreweryController(),
            builder: (breweryController) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 64.h,
                  horizontal: 32.w,
                ),
                child: Container(
                  height: 1350.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          customText(
                            text: "name",
                          ),
                          customText(
                            text: "address2",
                          ),
                          customText(
                            text: "address3",
                          ),
                          customText(
                            text: "breweryType",
                          ),
                          customText(
                            text: "city",
                          ),
                          customText(
                            text: "country",
                          ),
                          customText(
                            text: "countyProvince",
                          ),
                          customText(
                            text: "createdAt",
                          ),
                          customText(
                            text: "id",
                          ),
                          customText(
                            text: "latitude",
                          ),
                          customText(
                            text: "longitude",
                          ),
                          customText(
                            text: "obdbId",
                          ),
                          customText(
                            text: "phone",
                          ),
                          customText(
                            text: "postalCode",
                          ),
                          customText(
                            text: "state",
                          ),
                          customText(
                            text: "street",
                          ),
                          customText(
                            text: "updatedAt",
                          ),
                          customText(
                            text: "websiteUrl",
                          ),
                        ],
                      ),
                      Container(
                        width: Get.width / 2.3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            customText(
                              text: breweryController.breweryModel.name,
                            ),
                            customText(
                              text: breweryController.breweryModel.address2,
                            ),
                            customText(
                              text: breweryController.breweryModel.address3,
                            ),
                            customText(
                              text: breweryController.breweryModel.breweryType,
                            ),
                            customText(
                              text: breweryController.breweryModel.city,
                            ),
                            customText(
                              text: breweryController.breweryModel.country,
                            ),
                            customText(
                              text:
                                  breweryController.breweryModel.countyProvince,
                            ),
                            customText(
                              text: breweryController.breweryModel.createdAt,
                            ),
                            customText(
                              text: breweryController.breweryModel.id,
                            ),
                            customText(
                              text: breweryController.breweryModel.latitude,
                            ),
                            customText(
                              text: breweryController.breweryModel.longitude,
                            ),
                            customText(
                              text: breweryController.breweryModel.obdbId,
                            ),
                            customText(
                              text: breweryController.breweryModel.phone,
                            ),
                            customText(
                              text: breweryController.breweryModel.postalCode,
                            ),
                            customText(
                              text: breweryController.breweryModel.state,
                            ),
                            customText(
                              text: breweryController.breweryModel.street,
                            ),
                            customText(
                              text: breweryController.breweryModel.updatedAt,
                            ),
                            customText(
                              text: breweryController.breweryModel.websiteUrl,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
