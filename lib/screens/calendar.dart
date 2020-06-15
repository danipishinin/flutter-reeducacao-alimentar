import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';


class Agendar extends StatefulWidget {

  @override
  _AgendarState createState() => _AgendarState();
}

class _AgendarState extends State<Agendar> {
  CalendarController _calendar = CalendarController();

  @override

  Widget build(BuildContext context) {
    return new Center(
        child: new Container(
      margin: new EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 1,
      child: Column(children: [
        Text("Marcar Consulta:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
        TableCalendar(calendarController: _calendar)
      ],),),);
}
}
