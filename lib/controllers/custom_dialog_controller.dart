import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDialogBoxController extends GetxController with SingleGetTickerProviderMixin {
  TabController tabController;

  @override
  void onInit() {
    tabController = TabController(vsync: this, length: 2);
    super.onInit();
  }
}
class ClientAppointmentTabController extends GetxController with SingleGetTickerProviderMixin {
  TabController tabController;

  @override
  void onInit() {
    tabController = TabController(vsync: this, length: 4);
    super.onInit();
  }
}


class SalesTabController extends GetxController with SingleGetTickerProviderMixin {
  TabController salestabController;

  @override
  void onInit() {
    salestabController = TabController(vsync: this, length: 2);
    super.onInit();
  }
}

class ToBeTabController extends GetxController with SingleGetTickerProviderMixin {
  TabController toBetabController;

  @override
  void onInit() {
    toBetabController = TabController(vsync: this, length: 3);
    super.onInit();
  }
}
class NotificationTabController extends GetxController with SingleGetTickerProviderMixin {
  TabController notifytabController;

  @override
  void onInit() {
    notifytabController = TabController(vsync: this, length:2);
    super.onInit();
  }
}