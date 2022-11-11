import 'package:flutter/material.dart';
import 'package:my_diary/src/widgets/today_detail.dart';

class MyDiary extends StatelessWidget {
  MyDiary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => TodayDetail(),
    );
  }
}
