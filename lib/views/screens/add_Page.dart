import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'new_appointment.dart';
import 'new_time_reservation.dart';


class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    // EditClientController controller = Get.put(EditClientController());
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Add",
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



                Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(

                  onTap: () {

                    Get.to(NewTimeReservation());

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.access_time_sharp,
                              size: Get.height / 30,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: Get.width / 30,
                            ),
                            Text(
                              'New Time Reservation',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: Get.height / 50),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: Get.height / 45,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 10,
                ),


              ],
            )),
      ),
    );
  }
}
