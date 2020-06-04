import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  List<String> choices = ['HOME', 'TV', 'MOVIES', 'KIDS', 'SPORTS'];

  @override
  Size get preferredSize => Size.fromHeight(100.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF181c1e),
      title: Container(
        height: 25,
        child: Image.asset(
          'assets/images/prime_video.png',
          fit: BoxFit.cover,
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: IconButton(
            onPressed: () => print('Search shows tapped'),
            icon: Icon(Icons.search),
            color: Colors.grey,
          ),
        ),
      ],
      bottom: TabBar(
        indicatorColor: Colors.grey[200],
        indicatorWeight: 4,
        labelColor: Colors.grey[300],
        isScrollable: true,
        tabs: choices.map((choice) {
          return Tab(
            text: choice,
          );
        }).toList(),
      ),
    );
  }
}
