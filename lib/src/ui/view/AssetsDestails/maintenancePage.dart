import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/ui/view/AssetsDestails/bottomBar.dart';
import 'package:flutter_application_1/src/utils/uidata/color.dart';

class Maintenance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      // body: Column(
      //   children: [
      //     TabBar(
      //       controller: TabController(length: 2), // Adjust length for your tabs
      //       labelColor: Colors.blue, // Customize tab colors
      //       unselectedLabelColor: Colors.grey,
      //       onTap: (index) => controller.selectedIndex.value = index,
      //       tabs: [
      //         Tab(text: 'Tab 1'),
      //         Tab(text: 'Tab 2'),
      //       ],
      //     ),
      //     Expanded(
      //       child: TabBarView(
      //         controller: TabController(length: 2, vsync: TickerProvider.), // Same length as TabBar
      //         children: [
      //           MyTab1Content(), // Replace with your tab 1 content widget
      //           MyTab2Content(), // Replace with your tab 2 content widget
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: UIDataColors.commonColor,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: bottombar(1),
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
          title: Text(
            'MAINTENANCE',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
