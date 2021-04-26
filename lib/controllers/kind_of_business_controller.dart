import 'package:get/get.dart';
import 'package:ozys_owner/models/kindOfbusiness.dart';


class KindOfBusinessController extends GetxController {
  List<BusinessTypeModel> todos = [
    BusinessTypeModel(
      title: 'Hair Salon',
    ),
    BusinessTypeModel(
      title: 'Barbershop',
    ),
    BusinessTypeModel(
      title: 'Nail Salon',
    ),
    BusinessTypeModel(
      title: 'Beauty Salon',
    ),
    BusinessTypeModel(
      title: 'Eyebrows and Lashes',
    ), BusinessTypeModel(
      title: 'Massage',
    ), BusinessTypeModel(
      title: 'Makeup Artist',
    ),BusinessTypeModel(
      title: 'Tatto Shops',
    ),BusinessTypeModel(
      title: 'Personal Trainer',
    ),BusinessTypeModel(
      title: 'Eyebrows and Lashes',
    ),BusinessTypeModel(
      title: 'Hair Removal',
    ),BusinessTypeModel(
      title: 'Wedding Makeup Artist',
    ),BusinessTypeModel(
      title: 'Other',
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
