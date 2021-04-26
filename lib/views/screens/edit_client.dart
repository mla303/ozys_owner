import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/controllers/edit_clint_controller.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_text_field.dart';

class EditClient extends StatelessWidget {
  TextEditingController name = TextEditingController();
  TextEditingController emailAddress = TextEditingController();
  TextEditingController phoneNo = TextEditingController();
  TextEditingController dateOfBirth = TextEditingController();
  TextEditingController streetAddress = TextEditingController();
  TextEditingController appartmentNo = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController zipCode = TextEditingController();
  TextEditingController instructions = TextEditingController();
  String comment = 'He is special character';
  String clientName = 'Ali talib';

  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final primary = Theme.of(context).primaryColor;

    EditClientController controller = Get.put(EditClientController());
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Edit Client",
        height: 70,
        action: SizedBox(),
        leading: Icon(
          Icons.arrow_back_ios,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            width: Get.width,
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'No more booking from this client',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: Get.height / 50,
                          fontWeight: FontWeight.bold),
                    ),

                    Obx(
                      () => Switch(
                          activeColor: Colors.blue,
                          value: controller.noMoreBooking.value,
                          onChanged: (val) => controller.toggle()),
                    ),
                  ],
                ),

                Divider(
                  thickness: 1,

                ),

                SizedBox(
                  height: Get.height / 50,
                ),
                Text(
                  'Client Info',
                  style:
                      TextStyle(color: Colors.black, fontSize: Get.height / 40),
                ),
                SizedBox(
                  height: Get.height / 80,
                ),
                Text('Full Name'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: name,
                  hintText2: 'Enter Full Name',
                ),
                Text('Phone No'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: phoneNo,
                  hintText2: 'XXXXXXXXXXX',
                  textInputType: TextInputType.number,
                ),

                Text('Street address and Number'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: streetAddress,
                  hintText2: 'Enter street address amd number',
                  textInputType: TextInputType.text,
                ),
                Text('Apartment(optional)'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: appartmentNo,
                  hintText2: 'Enter Apartment',
                  textInputType: TextInputType.number,
                ),


                CustomButton(
                  lable: "Save",
                  borderColor: mainColor,
                  color: mainColor,
                  lableColor: Colors.white,
                  radius: 10,
                  onPress: () {
                    Get.back();
                    Get.snackbar("Client's profile", "updated");
                  },
                ),
                SizedBox(
                  height: Get.height / 50,
                ),
                CustomButton(
                  lable: "Delete Service",
                  borderColor: Colors.grey.withOpacity(0.2),
                  color: Colors.white,
                  lableColor: Colors.grey,
                  radius: 10,
                  onPress: () {},
                ),
              ],
            )),
      ),
    );
  }
}
