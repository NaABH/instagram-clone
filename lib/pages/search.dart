import 'package:flutter/material.dart';
import 'package:flutter_ui_two/util/explore_grid.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            color: Colors.grey.shade400,
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey.shade500,
                ),
                Container(
                  child: Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ExploreGrid(),
    );
  }
}
