import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodayDetail extends StatelessWidget {
  const TodayDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    String formattedDate = DateFormat.yMMMMd().format(now);
    String formattedWeek = DateFormat.EEEE().format(now);
    return Card(
      elevation: 3,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${formattedWeek.toString()}, ${formattedDate.toString()}',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                )
              ],
            ),
            SizedBox(height: 7),
            Text(
              'Fun Times with Friends',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            SizedBox(height: 7),
            DecoratedBox(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(16)),
              child: Ink.image(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1661956600654-edac218fea67?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1336&q=80',
                ),
                width: 400,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 15),
            Text(
                'Cupidatat non commodo anim nisi quis adipisicing esse consectetur officia non laborum reprehenderit non ad.'),
          ],
        ),
      ),
    );
  }
}
