import 'package:get/get.dart';
import 'package:ozys_owner/models/health_and_safity_rules_model.dart';



class HealthAndSafetyRulesController extends GetxController {
  List<HealthAndSafetyRulesModel> todos = [
    HealthAndSafetyRulesModel(
      title: 'No waiting area',
    ),
    HealthAndSafetyRulesModel(
      title: 'Employees wear masks',
    ),
    HealthAndSafetyRulesModel(
      title: 'Employees wear disposable gloves',
    ),
    HealthAndSafetyRulesModel(
      title: 'Employee temperature checks',
    ),
    HealthAndSafetyRulesModel(
      title: 'Masks provided for clients',

    ),
    HealthAndSafetyRulesModel(
      title: 'Disinfection between clients',
    ),
    HealthAndSafetyRulesModel(
      title: 'Maintain social distancing',
    ),
    HealthAndSafetyRulesModel(
      title: 'Clients screenings',
    ),
    HealthAndSafetyRulesModel(
      title: 'Maintain social distancing',
    ),
    HealthAndSafetyRulesModel(
      title: 'No interaction with other clients',
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