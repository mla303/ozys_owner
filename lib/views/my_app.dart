import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/utils/app_theme.dart';
import 'package:ozys_owner/views/screens/business_location.dart';
import 'package:ozys_owner/views/screens/profile/business_profile.dart';
import 'package:ozys_owner/views/screens/profile/statistics.dart';
import 'package:ozys_owner/views/screens/splash_screen.dart';
import 'screens/bottom_nav_bar.dart';
import 'screens/home/calendar_appoinments.dart';
import 'screens/new_sale.dart';
import 'screens/notification.dart';
import 'screens/profile/account_and_settings.dart';
import 'screens/profile/settings.dart';
import 'screens/profile/update_address.dart';
import 'screens/select_service.dart';

import 'screens/signup_steps/congratulations.dart';

import 'screens/signup_steps/signup_options.dart';

import 'screens/signup_steps/your_services_page.dart';
import 'screens/welcome.dart';

class MyApp extends StatelessWidget {
  AppTheme theme = AppTheme();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    theme: theme.themeData,
    home: SplashScreen(),
      initialRoute: "/splash",

      getPages: [

        GetPage(name: "/splash", page: () => SplashScreen()),
        GetPage(name: "/welcome", page: () => Welcome()),
        GetPage(name: "/signupOption", page: () => SignUpOption()),
        GetPage(name: "/YourServicesPage", page: () => YourServicesPage()),
        GetPage(name: "/BottomNavBar", page: () => BottomNavBar()),
        GetPage(name: "/CalendarAppoinmentPage", page: () => CalendarAppoinmentPage()),
        GetPage(name: "/NotificationPage", page: () => NotificationPage()),
        GetPage(name: "/AccountAndSettings", page: () => AccountAndSettings()),
        GetPage(name: "/Settings", page: () => Settings()),
        GetPage(name: "/SelectService", page: () => SelectService()),
        GetPage(name: "/checkout", page: () => NewSale()),
        GetPage(name: "/CongratulationPage", page: () => CongratulationPage()),
        GetPage(name: "/BusinessProfile", page: () => BusinessProfile()),
        GetPage(name: "/Statistics", page: () => Statistics()),
        GetPage(name: "/BusinessLocation", page: () => BusinessLocation()),
        GetPage(name: "/UpdateAddress", page: () => UpdateAddress()),

      ],
    );
  }
}
