import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';

import '../add_service.dart';
import '../delete_service.dart';

class YourServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Your Services",
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
          children: [
            Text(
              'What Services Can Client Book With You?',
              style:
              heding.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'You can change services and categories later.',
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 55,
            ),
//item for list
          //1st item
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.cancel,color: Colors.grey.withOpacity(0.4),size: 16,),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Haircut',
                  style: TextStyle(fontSize: 16,color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text(
                  '40m',
                  style: TextStyle(fontSize: 10),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'fixed',
                      style: TextStyle(fontSize: 10),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '\$30.00',
                      style: TextStyle(fontSize: 14,color: Colors.black, fontWeight: FontWeight.w200),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                    onTap: () => Get.to(DeleteService()),
                    child: Icon(Icons.arrow_forward_ios,color: Colors.grey.withOpacity(0.4),size: 16,)),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(),
            SizedBox(
              height: 5,
            ),

            //2nd item
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.cancel,color: Colors.grey.withOpacity(0.4),size: 16,),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Color',
                  style: TextStyle(fontSize: 16,color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text(
                  '40m',
                  style: TextStyle(fontSize: 10),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Start at',
                      style: TextStyle(fontSize: 10),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '\$30.00',
                      style: TextStyle(fontSize: 14,color: Colors.black, fontWeight: FontWeight.w200),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                    onTap: () => Get.to(DeleteService()),
                    child: Icon(Icons.arrow_forward_ios,color: Colors.grey.withOpacity(0.4),size: 16,)),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(),
            SizedBox(
              height: 5,
            ),
            //3rd item
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.cancel,color: Colors.grey.withOpacity(0.4),size: 16,),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Highlights',
                  style: TextStyle(fontSize: 16,color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text(
                  '40m',
                  style: TextStyle(fontSize: 10),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'fixed',
                      style: TextStyle(fontSize: 10),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '\$30.00',
                      style: TextStyle(fontSize: 14,color: Colors.black, fontWeight: FontWeight.w200),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                    onTap: () => Get.to(DeleteService()),
                    child: Icon(Icons.arrow_forward_ios,color: Colors.grey.withOpacity(0.4),size: 16,)),

              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                Get.to(AddService());
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.add_circle,color: mainColor,size: 24,),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Add another service',
                    style: TextStyle(fontSize: 14,color: mainColor),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Spacer(),


            CustomButton(
              lable: "Start Using OZYS",
              borderColor: mainColor,
              color: mainColor,
              lableColor: Colors.white,
              radius: 10,
              onPress: () {
                Get.offNamed('/CongratulationPage');
              },
            ),
            SizedBox(
              height: 10,
            ),


          ],
        ),
      ),
    );
  }
}
