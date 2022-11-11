import 'package:flutter/material.dart';
import 'package:my_diary/src/pages/my_diary.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
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
                SizedBox(height: 30),
                Expanded(
                  child: TabBarView(children: [
                    Container(child: MyDiary()),
                    Container(
                      color: Colors.red,
                      child: Center(
                        child: Text('calendar'),
                      ),
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
