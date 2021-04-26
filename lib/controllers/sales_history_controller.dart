import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/models/sales_history_model.dart';


class SalesHistoryController extends GetxController with SingleGetTickerProviderMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Sales History',),
    Tab(text: 'To be Charged'),
  ];

  TabController controller;

  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length,);
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }



  List<SalesHistoryModel> notif = [

  SalesHistoryModel(
  title: 'Ali Talib',
  msg: 'Appointment',
  time: '2:25 AM,',
      date: '3/3/21',
    img: Image.asset('assets/images/person.jpg'),
    paymnet: '\$211.22'
  ),
  SalesHistoryModel(
  title: 'Ali Talib',
  msg: 'Appointment',
  time: '2:25 AM,',
    date: '3/3/21',
    img: Image.asset('assets/images/person.jpg'),
    paymnet: '\$211.22'
  ),
  SalesHistoryModel(
  title: 'Ali Talib',
  msg: 'Appointment',
  time: '2:25 AM,',
    date: '3/3/21',
    img: Image.asset('assets/images/person.jpg'),
    paymnet: '\$211.22'
  ),
  ];


}