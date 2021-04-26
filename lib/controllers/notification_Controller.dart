import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/models/notification_model.dart';


class NotificationController extends GetxController {

  List<NotificationModel> notif = [

    NotificationModel(
      title: 'Diane Tucker',
      msg: 'How is your work going?',
      time: '2 hours ago'
    ),

    NotificationModel(
      title: 'Andrew Moore',
      msg: 'How are you getting along?',
      time: '5 hours ago'
    ),

    NotificationModel(
      title: 'Sara Dunn',
      msg: 'Great idea!',
      time: 'Nov 2'
    ),

    NotificationModel(
      title: 'Laura Barnett',
      msg: 'How is your job? Is it still OK?',
      time: 'Nov 6'
    ),

    NotificationModel(
      title: 'Beverly Walsh',
      msg: 'What\'s about your business?',
      time: 'Nov 8'
    ),

    NotificationModel(
      title: 'Brittany Rose',
      msg: 'Good job.',
      time: 'Nov 8'
    ),

  ];
}
