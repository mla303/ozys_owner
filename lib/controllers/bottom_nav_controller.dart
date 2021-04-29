import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/screens/add_Page.dart';
import 'package:ozys_owner/views/screens/home/calendar_appoinments.dart';
import 'package:ozys_owner/views/screens/home/client.dart';
import 'package:ozys_owner/views/screens/home/sales.dart';
import 'package:ozys_owner/views/screens/profile/main_profile_page.dart';



class BottomNavController extends GetxController {
  Widget currentPage;
  int currentIndex = 3;

  void updatePage(index) {
    switch (index) {


      case 0:
        currentPage = SalesPage();
        currentIndex = index;
        update();
        break;
      // case 1:
      //   currentPage = ClientPage();
      //   currentIndex = index;
      //   update();
      //   break;
      case 2:
        currentPage = AddPage();
        currentIndex = index;
        update();
        break;
      case 3:
        currentPage = CalendarAppoinmentPage();
        currentIndex = index;
        update();
        break;
      case 4:
        currentPage = MainProfilePage();
        currentIndex = index;
        update();
        break;

    }
  }
}
