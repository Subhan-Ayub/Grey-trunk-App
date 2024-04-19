// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/ui/view/AssetsDestails/bottomBar.dart';
import 'package:flutter_application_1/src/utils/routes/routes.dart';
import 'package:flutter_application_1/src/utils/uidata/color.dart';
import 'package:get/get.dart';

class AssetsDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arg = Get.arguments;
    print(arg);

    return Scaffold(
      appBar: appbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.checkout);
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.reply_rounded,
                        size: 30,
                        color: UIDataColors.commonColor,
                      ),
                      Text(
                        'CheckOut',
                        style: TextStyle(
                            fontSize: 13, color: UIDataColors.commonColor),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.dispose);
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.delete_rounded,
                        size: 28,
                        color: UIDataColors.commonColor,
                      ),
                      Text(
                        'Dispose',
                        style: TextStyle(
                            fontSize: 13, color: UIDataColors.commonColor),
                      )
                    ],
                  ).marginOnly(right: 20),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.lost);
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.help_center_rounded,
                        size: 30,
                        color: UIDataColors.commonColor,
                      ),
                      Text(
                        'Lost',
                        style: TextStyle(
                            fontSize: 13, color: UIDataColors.commonColor),
                      )
                    ],
                  ),
                )
              ],
            ).marginSymmetric(horizontal: 30, vertical: 10),
            Container(
              height: 250,
              width: Get.width,
              color: Color.fromARGB(34, 158, 158, 158),
              child: arg['img']=='na'? Icon(
                Icons.image,
                size: 75,
                color: const Color.fromARGB(123, 158, 158, 158),
              ):Image.file(arg['img']),
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text(
                      'Asset Tag ID:',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text('${arg['id']}')
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color.fromARGB(255, 0, 213, 39),
                  ),
                  child: Text(
                    'Available',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ).marginSymmetric(horizontal: 20, vertical: 20),
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 60,vertical: 2),
              width: Get.width - 40,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: UIDataColors.commonColor,
              ),
              child: Text(
                'LOCATE ASSET',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ).marginOnly(bottom: 25),
            des('Brand', '${arg['Brand']}', 2),
            des('Description', '${arg['Description']}', 1),
            des('Purchase Date', '${arg['PurchasedDate']}', 2),
            des('Category', '${arg['Category']}', 1),
            des('Model', '${arg['Model']}', 2),
            des('Serial number', '${arg['SerialNumber']}', 1),
            des('Assigned To', '${arg['AssignedTo']}', 2),
            des('Last Scanned Date', '${arg['LastScanDate']}', 1),
            des('Due Date', '${arg['DueDate']}', 2),
            des('Disposed Date', '${arg['DisposedDate']}', 1),
            des('Created Date', '${arg['CreatedDate']}', 2),
            des('Site', '${arg['Site']}', 1),
            des('Location', '${arg['Location']}', 2),
            des('Depreciation', '${arg['Depreciation']}', 1),
            des('Depreciation Method', '${arg['DepreciationMethod']}', 2),
            des('Total cost(USD)', '${arg['TotalCost']}', 1),
            des('Asset Life (Month)', '${arg["AssetLife"]}', 2),
            des('Salvage value (USD)', '${arg["SalvageValue"]}', 1),
            des('Date Acquired', '${arg["DateAcquired"]}', 2),
          ],
        ),
      ),
      bottomNavigationBar: bottombar(0),
    );
  }

  Container des(String key, String value, int check) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(vertical: 10),
      color: check > 1
          ? Color.fromARGB(255, 239, 239, 239)
          : Color.fromARGB(255, 255, 255, 255),
      child: Row(
        children: [
          SizedBox(
              width: Get.width / 2.5,
              child: Text(
                '$key:',
                style: TextStyle(fontWeight: FontWeight.w600),
              )).marginOnly(left: 20),
          Text('$value').marginOnly(left: 20)
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
              'ASSETS DETAILS',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            Center(
                child: InkWell(
              onTap: () {
                Get.toNamed(Routes.editAssets);
              },
              child: Icon(
                Icons.add,
                size: 30,
                color: UIDataColors.commonColor,
              ),
            )).marginOnly(right: 18),
          ],
        ),
      ),
    );
  }
}
