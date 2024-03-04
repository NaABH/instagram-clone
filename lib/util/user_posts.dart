import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;

  UserPosts({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Profile pic
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.menu),
            ],
          ),
        ),
        //Post
        Container(
          height: 300,
          color: Colors.grey.shade300,
        ),

        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark)
            ],
          ),
        ),

        const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Text('Liked by '),
                  Text(
                    'Wilson',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(' and '),
                  Text(
                    'others',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 8),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                    text:
                        ' I turn the dirty they throwing into riches til i\'m filthy. Testing'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
