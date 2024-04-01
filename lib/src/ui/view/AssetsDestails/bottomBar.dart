 import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/utils/routes/routes.dart';
import 'package:get/get.dart';

BottomNavigationBar bottombar(int page) {
    return BottomNavigationBar(
      selectedFontSize: 11,
      unselectedLabelStyle:
          const TextStyle(color: Colors.black, fontSize: 10),

      type: BottomNavigationBarType.fixed,

      currentIndex: page,
      onTap: (ind) {
        print(ind);
      },
      items:  [
        
        BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {
              Get.toNamed(Routes.document);
            },
            child: Icon(
              Icons.description_outlined,
              // color: Color.fromARGB(255, 54, 54, 54),
            ),
          ),
          label: 'Documents',
        ),
        BottomNavigationBarItem(
          
            icon: InkWell(onTap: () {
              Get.toNamed(Routes.maintenance);
            }, child: Icon(Icons.settings)), label: 'Maintenance'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'History'),
        BottomNavigationBarItem(icon: InkWell(onTap: () {
          Get.toNamed(Routes.event);
        }, child: Icon(Icons.search)), label: 'Event'),
        BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz), label: 'Despreciation'),
      ],
    );
  }