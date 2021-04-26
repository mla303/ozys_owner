import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';


class WorkPlacePhotos extends StatelessWidget {
  const WorkPlacePhotos({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "WorkPlace Photos ",
        height: 70,
        action: SizedBox(),
        leading: Icon(
          Icons.arrow_back_ios,
        ),


      ),
      body: Container(
        height: Get.height,
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return PortfolioTile();
            }),
      ),
    );
  }
}

class PortfolioTile extends StatelessWidget {
  const PortfolioTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      margin: EdgeInsets.only(left: 12, right: 13),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        semanticContainer: true,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(
              'assets/images/workplace.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),

            Center(
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.upload_rounded,
                    color: Colors.white,
                    size: Get.height/12,
                  ),
                  Text("Upload Photo",
                  style: TextStyle(color: Colors.white),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
