import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/controllers/viewAssets_controller.dart';
import 'package:flutter_application_1/src/utils/routes/routes.dart';
import 'package:flutter_application_1/src/utils/uidata/color.dart';
import 'package:get/get.dart';

class ViewAssets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 241, 241),
      appBar: appbar(),
      body: body(),
    );
  }

  SingleChildScrollView body() {
    ViewAssetsController _= Get.find<ViewAssetsController>();
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0), // Set border radius
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  offset: Offset(0, 5),
                  blurRadius: 15.0,
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle:
                    TextStyle(color: const Color.fromARGB(148, 158, 158, 158)),
                prefixIcon: Icon(
                  Icons.search_rounded,
                  size: 22,
                  color: Colors.grey,
                ),
                suffixIcon: Icon(
                  Icons.center_focus_strong_outlined,
                  size: 22,
                  color: UIDataColors.commonColor,
                ),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Results: 2 Assets',
              ),
              Icon(Icons.format_list_numbered_rounded)
            ],
          ).marginSymmetric(horizontal: 15).marginOnly(bottom: 10),
          Container(
            height: Get.height / 1.2,
            width: Get.width,
            child: ListView.builder(
                itemCount: _.data.length,
                itemBuilder: (BuildContext context, ind) {
                  return InkWell(
                    onTap: () {
                      Get.toNamed(Routes.assetsDetails,arguments: _.data[ind]);
                    },
                    child: Container(
                      color: Colors.white,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Asset tag ID: ${_.data[ind]['id']}'),
                                Text(
                                  '• Available',
                                  style: TextStyle(color: Colors.green),
                                )
                              ],
                            ).marginSymmetric(vertical: 10),
                            Divider(),
                            Container(
                              width: Get.width / 2,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.description_outlined,
                                        size: 17,
                                      ).marginOnly(right: 5),
                                      Text('Description:'),
                                      Spacer(),
                                      Text(' ${_.data[ind]['Description']}')
                                    ],
                                  ).marginOnly(top: 5, bottom: 5),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.add_location_alt,
                                        size: 17,
                                      ).marginOnly(right: 5),
                                      Text('Site:'),
                                      Spacer(),
                                      Text(' ${_.data[ind]['Site']}')
                                    ],
                                  ).marginOnly(top: 5, bottom: 5),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.maps_home_work_outlined,
                                        size: 17,
                                      ).marginOnly(right: 5),
                                      Text('Location:'),
                                      Spacer(),
                                      Text(' ${_.data[ind]['Location']}')
                                    ],
                                  ).marginOnly(top: 5, bottom: 5),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.category,
                                        size: 17,
                                      ).marginOnly(right: 5),
                                      Text('Category:'),
                                      Spacer(),
                                      Text(' ${_.data[ind]['Category']}')
                                    ],
                                  ).marginOnly(top: 5, bottom: 5),
                                ],
                              ),
                            )
                          ]).marginSymmetric(horizontal: 15),
                    ).marginOnly(bottom: 10),
                  );
                }),
          )
        ],
      ),
    );
  }

  PreferredSize appbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1.0,
              blurRadius: 3.0,
              offset: Offset(0.0, 2.0),
            ),
          ],
        ),
        child: AppBar(
          title: Center(
            child: Text(
              'ASSETS',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            Center(
                child: Icon(
              Icons.add,
              size: 30,
              color: UIDataColors.commonColor,
            )).marginOnly(right: 18),
          ],
        ),
      ),
    );
  }
}
