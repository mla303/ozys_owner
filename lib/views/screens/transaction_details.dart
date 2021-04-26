import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';


class TransactionDetails extends StatelessWidget {
  TextEditingController tip = TextEditingController();
  var dob = '18 March, 1997';
  var address = 'Islamabad';

  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Transaction Details",
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('ID:429348239',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: Get.height / 50,
                        fontWeight: FontWeight.w500),),
                    Text(
                      '12:00pm, 03/04/2012', // its simple text, it will come from database
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: Get.height / 50,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ali Talib',
                      style:
                      heding.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '$address',
                      style:
                      heding.copyWith(fontSize: 12, fontWeight: FontWeight.w200),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '+92 323 5077538',
                      style:
                      heding.copyWith(fontSize: 12, fontWeight: FontWeight.w200),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),

                Divider(),
                Text(
                  'Jacob Barber', // its simple text, it will come from database
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: Get.height / 50,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  '455641 montreal', // its simple text, it will come from database
                  style:
                  heding.copyWith(fontSize: 12, fontWeight: FontWeight.w200),
                ),
                Text(
                  '+92 323 5077538',
                  style:
                  heding.copyWith(fontSize: 12, fontWeight: FontWeight.w200),
                  textAlign: TextAlign.center,
                ),
                Divider(),


                Text(
                  'Details', // its simple text, it will come from database
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: Get.height / 50,
                      fontWeight: FontWeight.w600),
                ),

                Text(
                  'Highlights, Haircut, Coloring', // this is the name of services, it will come from database
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: Get.height / 50,
                      fontWeight: FontWeight.w500),
                ),

                Divider(),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Sub Total: \$480', // its simple text, it will come from database
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Get.height / 50,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: Get.height/80,),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Total: \$500', // its simple text, it will come from database
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Get.height / 50,
                        fontWeight: FontWeight.w600),
                  ),
                ),


                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: Get.height / 50,
                          fontWeight: FontWeight.w600),
                    ),
                    Text('\$700',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: Get.height / 50,
                          fontWeight: FontWeight.w600),
                    ),
                  ],),
                SizedBox(height: Get.height/3,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Receipt: ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: Get.height / 50,
                          fontWeight: FontWeight.w600),
                    ),
                    Text('CAN-OCYS-DAS 3/4/5 12:00PM',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: Get.height / 50,
                          fontWeight: FontWeight.w600),
                    ),
                  ],),
                SizedBox(height: Get.height/80,),
                Center(
                  child: Text('Paid: Cash \$125445 ',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: Get.height / 50,
                        fontWeight: FontWeight.w600),
                  ),
                ),
               
              ],
            )),
      ),
    );
  }
}
