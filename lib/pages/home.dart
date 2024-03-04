import 'package:flutter/material.dart';
import 'package:flutter_ui_two/util/bubble_stories.dart';
import 'package:flutter_ui_two/util/user_posts.dart';

class UserHome extends StatelessWidget {
  UserHome({super.key});

  final List people = [
    'User1',
    'User2',
    'User3',
    'User4',
    'User5',
    'User6',
    'User7'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // stories
          Container(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(text: people[index]);
                }),
          ),

          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPosts(
                    name: people[index],
                  );
                }),
          )
        ],
      ),
    );
  }
}
