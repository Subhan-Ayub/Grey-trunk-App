import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/controllers/dashboard_controller.dart';
import 'package:flutter_application_1/src/utils/routes/routes.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter_application_1/src/utils/uidata/color.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    DashboardController _ = Get.find<DashboardController>();
    return Scaffold(
      drawer: drawer(),
      appBar: appbar(),
      body: body(_),
    );
  }

  SingleChildScrollView body(DashboardController _) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Get.toNamed(Routes.viewAssets);
            },
            child: Center(
              child: Container(
                width: Get.width - 30,
                height: 90,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: const [
                        UIDataColors.commonColor,
                        Color.fromARGB(193, 0, 0, 0)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: const [0.2, 2.9],
                      tileMode: TileMode.clamp,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'No. of Assets',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 28),
                        )
                      ],
                    ),
                    SvgPicture.asset(
                      'assets/images/dashboard/purple-bg-images.svg',
                      height: 75,
                    )
                  ],
                ).marginOnly(left: 10),
              ).marginOnly(bottom: 10, top: 15),
            ),
          ),
          Center(
            child: Container(
              width: Get.width - 30,
              height: 90,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: const [
                      UIDataColors.commonColor,
                      Color.fromARGB(193, 0, 0, 0)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: const [0.2, 2.9],
                    tileMode: TileMode.clamp,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'No. of Assets',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      Text(
                        '1',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 28),
                      )
                    ],
                  ),
                  SvgPicture.asset(
                    'assets/images/dashboard/purple-bg-images.svg',
                    height: 75,
                  )
                ],
              ).marginOnly(left: 10),
            ).marginOnly(bottom: 10),
          ),
          Center(
            child: Container(
              width: Get.width - 30,
              height: 90,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: const [
                      UIDataColors.commonColor,
                      Color.fromARGB(193, 0, 0, 0)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: const [0.2, 2.9],
                    tileMode: TileMode.clamp,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'No. of Assets',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      Text(
                        '1',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 28),
                      )
                    ],
                  ),
                  SvgPicture.asset(
                    'assets/images/dashboard/purple-bg-images.svg',
                    height: 75,
                  )
                ],
              ).marginOnly(left: 10),
            ).marginOnly(bottom: 10),
          ),
          Text(
            'ASSET BY STATUS',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
          ).marginOnly(left: 15, top: 15),
          chart(_),
          Container(
            height: 100,
            width: Get.width,
            color: Color.fromARGB(25, 158, 158, 158),
            child: Wrap(
              children: [
                Wrap(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.blue,
                      ),
                    ),
                    Text('Dispose').marginOnly(left: 7),
                  ],
                ).marginOnly(left: 80, top: 17),
                Wrap(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Color.fromARGB(255, 223, 0, 0),
                      ),
                    ),
                    Text('Lost').marginOnly(left: 7),
                  ],
                ).marginOnly(left: 80, top: 17),
                Wrap(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Color.fromARGB(255, 0, 192, 45),
                      ),
                    ),
                    Text('Available').marginOnly(left: 7),
                  ],
                ).marginOnly(left: 80, top: 17),
                Wrap(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Color.fromARGB(255, 224, 160, 0),
                      ),
                    ),
                    Text('Check Out').marginOnly(left: 7),
                  ],
                ).marginOnly(left: 80, top: 17),
              ],
            ),
          )
        ],
      ),
    );
  }

  SfCircularChart chart(DashboardController _) {
    return SfCircularChart(series: <CircularSeries<ChartData, String>>[
      DoughnutSeries<ChartData, String>(
          dataSource: _.data,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
          radius: '90%',
          explode: true,
          explodeGesture: ActivationMode.singleTap,
          explodeOffset: '5%',
          dataLabelSettings: const DataLabelSettings(
            // color: Colors.amber,
            textStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            isVisible: true,
            // labelIntersectAction: LabelIntersectAction.shift,
            // Customize other data label settings here
          ),
          name: 'Gold')
    ]);
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
              'HOME',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  color: UIDataColors.commonColor,
                  borderRadius: BorderRadius.circular(50)),
              child: Center(
                  child: Icon(
                Icons.center_focus_strong_outlined,
                size: 24,
                color: Colors.white,
              )),
            ).marginOnly(right: 18),
          ],
        ),
      ),
    );
  }

  Drawer drawer() {
    return Drawer(
        backgroundColor: UIDataColors.commonColor,
        width: Get.width / 1.5,
        child: ListView(
          children: [
            Container(
              height: 40,
              width: 40,
              color: Colors.amber,
            )
          ],
        ));
  }
}

class ChartData {
  ChartData(this.x, this.y);

  final String x;
  final double y;
}
