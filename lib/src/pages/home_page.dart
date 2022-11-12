import 'package:flutter/material.dart';
import 'package:my_diary/src/pages/calendar_page.dart';
import 'package:my_diary/src/pages/my_diary.dart';
import 'package:my_diary/src/widgets/today.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0).copyWith(bottom: 0),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 300,
                      child: TabBar(
                        indicatorWeight: 4,
                        unselectedLabelColor: Colors.grey,
                        labelColor: Colors.blueAccent,
                        indicatorColor: Colors.blueAccent,
                        tabs: [
                          Tab(
                            text: 'MyDiary',
                          ),
                          Tab(
                            text: 'Calendar',
                          ),
                          Tab(
                            text: 'Memories',
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Today(),
                SizedBox(height: 20),
                Expanded(
                  child: TabBarView(children: [
                    Container(child: MyDiary()),
                    Container(
                      child: CalendarPage(),
                    ),
                    Container(
                      color: Colors.yellow,
                      child: Center(
                        child: Text('memories'),
                      ),
                    ),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
