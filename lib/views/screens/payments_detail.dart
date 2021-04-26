import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'add_payment_card.dart';


class PaymentDetailPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final boldFonts = Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.w800, color: Colors.black);
    final mediumFont = Theme.of(context).textTheme.bodyText2;

    var data = 'Completed';
    var data2 = '\$14.00';
    var data3 = 'Syed Talha Faiz';
    var data4 = '003283922028111';

    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Payment History",
        height: 70,
        action:SizedBox(),
        leading: Icon(
          Icons.arrow_back_ios_outlined,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  Get.to(AddPaymentCard());
                },
                child: Center(
                  child: Text(
                    "Tap to Add card info",
                    style: mediumFont.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              PaymentHistoryTile(
                  data: data, data2: data2, data3: data3, data4: data4),

              PaymentHistoryTile(
                  data: data, data2: data2, data3: data3, data4: data4),
              SizedBox(
                height: 5,
              ),
              Divider(),


            ],
          ),
        ),
      ),
    );
  }
}




class PaymentHistoryTile extends StatelessWidget {
  const PaymentHistoryTile({
    Key key,
    @required this.data,
    @required this.data2,
    @required this.data3,
    @required this.data4,
  }) : super(key: key);

  final String data;

  final String data2;
  final String data3;
  final String data4;

  @override
  Widget build(BuildContext context) {
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return  Container(
      height: 80,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      padding: EdgeInsets.only(left: 12, right: 12, top: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Color(0xffE2E0E0))),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              Text(
                data2,
                style: mediumFont.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height: 5,),
              Text(
                data3,
                style: mediumFont.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              Text(
                data4,
                style: mediumFont.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff8D8D8D)),
              ),
              SizedBox(
                height: 8,
              ),


            ],
          ),
          Spacer(
            flex: 4,
          ),
          VerticalDivider(),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'April',
                style: mediumFont.copyWith(fontSize: 10),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                '8',
                style: mediumFont.copyWith(fontSize: 30, color: Colors.black),
              ),
              SizedBox(
                height: 4,
              ),

            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}








