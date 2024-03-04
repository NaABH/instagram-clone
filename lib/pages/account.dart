import 'package:flutter/material.dart';
import 'package:flutter_ui_two/util/account_tab1.dart';
import 'package:flutter_ui_two/util/account_tab2.dart';
import 'package:flutter_ui_two/util/account_tab3.dart';
import 'package:flutter_ui_two/util/account_tab4.dart';
import 'package:flutter_ui_two/util/bubble_stories.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // profile picture
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      shape: BoxShape.circle,
                    ),
                  ),

                  // number of posts, following, follower
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text('212',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 24)),
                            Text('Posts')
                          ],
                        ),
                        Column(
                          children: [
                            Text('2132',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 24)),
                            Text('Following')
                          ],
                        ),
                        Column(
                          children: [
                            Text('2122',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 24)),
                            Text('Followers')
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3.0),
                    child: Text('I create apps and games'),
                  ),
                  Text(
                    'm.youtube.com/adbs',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Center(child: Text('Edit Profile')),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Center(child: Text('Ad Tools')),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Center(child: Text('Insight')),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                children: [
                  BubbleStories(text: 'Story1'),
                  BubbleStories(text: 'Story2'),
                  BubbleStories(text: 'Story3'),
                  BubbleStories(text: 'Story4'),
                ],
              ),
            ),
            TabBar(tabs: [
              Tab(
                icon: Icon(Icons.grid_3x3_outlined),
              ),
              Tab(
                icon: Icon(Icons.video_call),
              ),
              Tab(
                icon: Icon(Icons.shop),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
            ]),
            Expanded(
                child: TabBarView(
              children: [
                AccountTab1(),
                AccountTab2(),
                AccountTab3(),
                AccountTab4(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
