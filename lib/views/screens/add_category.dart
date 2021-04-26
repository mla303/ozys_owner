import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_text_field.dart';


class AddCategory extends StatelessWidget {
  TextEditingController nameOfService = TextEditingController();
  TextEditingController duration = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController priceType = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Category",
        height: 70,
        action: SizedBox(),
        leading: Icon(
          Icons.arrow_back_ios,
        ),


      ),
      body: Container(
          width: Get.width,
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [









              Text('Name of Category'),
              CustomTextField(
                enable: false,
                obscuretext: false,
                txtController: nameOfService,
                hintText2: 'Enter Name of Catergory',
              ),


              Spacer(),



              CustomButton(
                lable: "Save",
                borderColor: mainColor,
                color: mainColor,
                lableColor: Colors.white,
                radius: 10,
                onPress: (){
                  Get.back();
                },

              ),




            ],
          )),
    );
  }
}
