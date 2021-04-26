import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import '../calendar_options.dart';
import '../edit_time_reservation.dart';
import '../notification.dart';
import 'client_appointments.dart';

class CalendarAppoinmentPage extends StatelessWidget {

  TextEditingController note = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).primaryColor;
    final heding = Theme.of(context).textTheme.headline1;


    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: " Appointments",
        height: 70,
        action: Center(child: Row(
          children: [
            // Icon(Icons.sticky_note_2,color: Colors.grey,),
            SizedBox(width: 10,),
            GestureDetector(
                onTap: (){
                  Get.to(NotificationPage());
                },
                child: Icon(Icons.notifications_active,color: Colors.grey,)),
            SizedBox(width: 10,)
          ],
        )),
        leading: GestureDetector(
          onTap: (){
            Get.to(CalendarOptions());
          },
          child: Icon(
            Icons.filter_alt,
          ),
        ),
      ),
      body: SfCalendar(
        allowedViews: [
          CalendarView.day,
          CalendarView.week,
          CalendarView.workWeek,
          CalendarView.timelineDay,
          CalendarView.timelineWeek,
          CalendarView.timelineWorkWeek,
          CalendarView.timelineMonth
        ],
      onTap: (CalendarTapDetails details){
              DateTime date = details.date.toLocal();
              dynamic appointments = details.appointments;
              CalendarElement view = details.targetElement;
              appointments != null
              ? Get.to(EditTimeReservation())
              : Get.snackbar(appointments, "There is no appoinment $date");
            },
        timeSlotViewSettings: TimeSlotViewSettings(

            timeInterval: Duration(hours: 2),
            timeIntervalHeight: 60,
            timeIntervalWidth: 100,
        ),
        resourceViewSettings: ResourceViewSettings(
          showAvatar: true,
          size: 50
        ),
        scheduleViewSettings: ScheduleViewSettings(
          appointmentItemHeight: 60,
              weekHeaderSettings: WeekHeaderSettings(
                backgroundColor: Colors.red,
                height: 60,
              ),
        ),
        // firstDayOfWeek: 1,
        view: CalendarView.week,
        todayHighlightColor: mainColor,
        showNavigationArrow: true,
        showCurrentTimeIndicator: true,
        allowViewNavigation: true,
        showDatePickerButton: true,
        viewHeaderHeight: 50,
        firstDayOfWeek: 6,
        dataSource: MeetingDataSource(getAppointments()),


      ),
    );
  }
  List<Appointment> getAppointments() {
    List<Appointment> meetings = <Appointment>[];
    final DateTime today = DateTime.now();
    final DateTime startTime1 =
    DateTime(today.year, today.month, today.day, 12, 0, 0);
    final DateTime endTime1 = startTime1.add(const Duration(hours: 2));


    final DateTime startTime2 =
    DateTime(today.year, today.month, today.day, 6, 0, 0);
    final DateTime endTime2 = startTime2.add(const Duration(hours: 2));


    meetings.add(
      Appointment(
        startTime: startTime2,
        endTime: endTime2,
        subject: 'Reservation',
        color: Colors.amber,
        recurrenceRule: 'FREQ=DAILY;COUNT=10',
        isAllDay: false)
    );

    meetings.add(
        Appointment(
        startTime: startTime1,
        endTime: endTime1,
        subject: 'Reservation',
        color: Colors.green,
        recurrenceRule: 'FREQ=DAILY;COUNT=10',
        isAllDay: false),

    );


    return meetings;
  }

}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}

