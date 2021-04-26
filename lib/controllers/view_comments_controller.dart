import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/models/view_comments_model.dart';


class ViewCommentsController extends GetxController with SingleGetTickerProviderMixin {
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



  List<ViewCommentsModel> notif = [

    ViewCommentsModel(
  title: 'Ali Talib',
  msg: 'orem Ipsum is simply dummy text of the printing and typesetting',
    img: Image.asset('assets/images/person.jpg'),
      icon: Icon(Icons.favorite)
  ),

 ViewCommentsModel(
  title: 'Sohail Ahmed',
  msg: 'orem Ipsum is simply dummy text of the printing and typesetting industry. ...',
    img: Image.asset('assets/images/person.jpg'),
      icon: Icon(Icons.favorite)
  ),

 ViewCommentsModel(
  title: 'Talha Faiz',
  msg: 'orem Ipsum is simply dummy text of the printing and typesetting industry. ... ',
    img: Image.asset('assets/images/person.jpg'),
      icon: Icon(Icons.favorite)
  ),

  ];


}