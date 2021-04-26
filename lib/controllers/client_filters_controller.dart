import 'package:get/get.dart';
import 'package:ozys_owner/models/client_filters_model.dart';




class ClientFiltersController extends GetxController {
  List<ClientFiltersModel> todos = [
    ClientFiltersModel(
      title: 'All Clients',
    ),
    ClientFiltersModel(
      title: 'New Client',
    ),
    ClientFiltersModel(
      title: 'Most Loyal Client',
    ),

  ];

  List<String> todoTemp = [];

  changeStatus(String todo, bool condition) {
    if (condition) {
      todoTemp.add(todo);
    } else {
      todoTemp.remove(todo);
    }
    print(todoTemp.length);
    update();
  }
}