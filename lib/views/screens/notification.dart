import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/controllers/custom_dialog_controller.dart';
import 'package:ozys_owner/models/notification_model.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_continer.dart';
import 'package:ozys_owner/views/widgets/list.dart';
import 'profile/chat_screen.dart';

class NotificationPage extends StatelessWidget {


  final controller = Get.put(NotificationTabController());

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final boldFonts = Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.w800, color: Colors.black);
    final mediumFont = Theme.of(context).textTheme.bodyText2;



    return Scaffold(
      appBar:
      tabappBar(
          centerTitle: true,
          title: "Notifications",
          height: 80,
          action: SizedBox(),
          leading: Icon(
        Icons.arrow_back_ios,
      ),
          data: TabBar(
            labelStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black,
            labelPadding: EdgeInsets.symmetric(vertical: 5),
            controller: controller.notifytabController,
            tabs: [
              Text("Notification"),
              Text("Messages"),

            ],)
      ),
      body: TabBarView(
        controller: controller.notifytabController,

        children: [


          NotificationTile(),
          messages(),
          // messages()



        ],


      ),
    );
  }
}



class NotificationTile extends StatefulWidget {
  NotificationModel notificationModel;


  NotificationTile({this.notificationModel,});

  @override
  _TodoTileState createState() => _TodoTileState();
}

class _TodoTileState extends State<NotificationTile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [

          SizedBox(height: 100,),
          Icon(Icons.notifications,size: 50,),
          Text("Currently, You don\'t have any Notification",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Colors.black
            ),
            textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}






class messages extends StatefulWidget {

  // final String titles;
  //
  // const messages(this.titles);

  @override
  _messagesState createState() => new _messagesState();
}


class _messagesState extends State<messages> {


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;


    return Container(
      width: Get.width,
      height: Get.height,
      child: ListView.builder(
        itemCount: friendsList.length,
        itemBuilder: (ctx, i) {
          return Column(
            children: <Widget>[
              ListTile(
                isThreeLine: true,
                onLongPress: () {},
                onTap: () {
                  Get.to(ChatScreen());
                },


                leading:  CustomMyAvatar(
                  width: 60.0,
                  height: 60.0,
                  data: ("assets/images/person.png"),
                  colr: mainColor,
                  bgColor: mainColor,
                ),

                title: Text(
                  "${friendsList[i]['username']}",
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "${friendsList[i]['lastMsg']}",
                  style:
                       Theme.of(context)
                      .textTheme
                      .subtitle
                      .apply(color: Colors.black87)
                ),

              ),
              Divider()
            ],
          );
        },
      ),
    );


  }

}







