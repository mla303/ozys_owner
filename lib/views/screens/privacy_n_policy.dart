import 'package:flutter/material.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';

class PrivacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
          title: 'Privacy and Policy',
          action: SizedBox(),
          context: context,
          height: 50,
          leading: Icon(Icons.arrow_back_ios)),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Terms of service are the legal agreements between a service provider and a person who wants to use that service. The person must agree to abide by the terms of service in order to use the offered service. Terms of service can also be merely a disclaimer, especially regarding the use of websites..',
            ),
          ],
        ),
      ),
    );
  }
}