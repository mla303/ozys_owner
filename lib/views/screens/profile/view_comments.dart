import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/controllers/view_comments_controller.dart';
import 'package:ozys_owner/models/view_comments_model.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_continer.dart';
import 'package:ozys_owner/views/widgets/custom_text_field.dart';
import 'package:ozys_owner/views/widgets/multi_line_text_field.dart';

class ViewComments extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Comments",
        height: 70,
        action: SizedBox(),
        leading: Icon(
          Icons.arrow_back_ios,
        ),


      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: GetBuilder<ViewCommentsController>(
              init: ViewCommentsController(),
              builder: (controler) {
                return ListView.separated(
                  itemCount: controler.notif.length,
                  itemBuilder: (context, index) {
                    return SalesTile(
                      viewCommentsModel: controler.notif[index],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 30,
                    );
                  },
                );
              }),
        ),
      ),
    );
  }
}


class SalesTile extends StatefulWidget {
  ViewCommentsModel viewCommentsModel;


  SalesTile({this.viewCommentsModel,});

  @override
  _TodoTileState createState() => _TodoTileState();
}

class _TodoTileState extends State<SalesTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, top: 0),
      child: GestureDetector(
        onTap: (){
          // Get.to(TransactionDetails());
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomMyAvatar(
              width: 40.0,
              height: 40.0,
              data: ("assets/images/person.png"),
              colr: mainColor,
              bgColor: mainColor,
            ),
            SizedBox(width: 5,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.viewCommentsModel.title,style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w300),),
                SizedBox(width: 5,),
                Container(
                    width: Get.width/1.4,
                    child: Text(widget.viewCommentsModel.msg,style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 12,fontWeight: FontWeight.w300),)),
              ],
            ),




          ],
        ),
      ),
    );
    ;
  }
}