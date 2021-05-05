import 'package:flutter/material.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';

class PrivacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
          title: '',
          action: SizedBox(),
          context: context,
          height: 50,
          leading: Icon(Icons.arrow_back_ios)),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15,vertical: 0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Privacy and Policy",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
            SizedBox(height: 10,),
            Text(
              'Terms of service are the legal agreements between a service provider '
                  'and a person who wants to use that service. The person '
                  'must agree to abide by the terms of service in order to use '
                  'the offered service. Terms of service can also be merely a disclaimer, '
                  'especially regarding the use of websites..',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 15
              ),
            ),

            SizedBox(height: 20,),
            Text(
              'Last Updated April 3,2021',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: 10
              ),
            ),
          ],
        ),
      ),
    );
  }
}