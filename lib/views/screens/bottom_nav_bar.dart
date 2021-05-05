import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/controllers/bottom_nav_controller.dart';


class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GetBuilder<BottomNavController>(
        init: BottomNavController(),
        builder: (controller) {
          return Scaffold(
            body: controller.currentPage,
            bottomNavigationBar: BottomNavigationBar(
              selectedLabelStyle: TextStyle(fontSize: 11),
              unselectedLabelStyle: TextStyle(fontSize: 10),
              currentIndex: controller.currentIndex,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                controller.updatePage(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.featured_play_list),
                  label: 'Sales',
                ),
                // BottomNavigationBarItem(
                //   icon: Icon(Icons.people_alt),
                //   label: 'Client',
                // ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_box_rounded),
                  label: 'Add',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today_outlined),
                  label: 'Appointment',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                )
              ],
            ),
          );
        });
  }
}
