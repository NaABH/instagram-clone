import 'package:flutter/material.dart';
import 'package:flutter_ui_two/util/shop_grid.dart';

class UserShop extends StatelessWidget {
  const UserShop({super.key});

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
              'Shop',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                Icon(Icons.calendar_today),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Icon(Icons.menu),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
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
          Expanded(child: ShopGrid()),
        ],
      ),
    );
  }
}
