import 'package:flutter/material.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PagedVerticalCalendar(
      onDayPressed: (value) {},
    );
  }
}
