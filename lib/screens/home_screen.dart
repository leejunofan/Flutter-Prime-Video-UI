import 'package:flutter/material.dart';
import 'package:prime_video_ui/data/data.dart';
import 'package:prime_video_ui/widgets/bottom_nav.dart';
import 'package:prime_video_ui/widgets/carousel.dart';
import 'package:prime_video_ui/widgets/custom_app_bar.dart';
import 'package:prime_video_ui/widgets/show_scroll.dart';

//TODO: 1) Make CustomAppBar widget.
//TODO: 2) Make Carousel widget.
//TODO: 3) Make ShowScroll widget.
//TODO: 4) Make BottomNavBar widget.

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Color(0xFF0e171e),
        appBar: CustomAppBar(),
        body: ListView(
          children: <Widget>[
            ShowCarousel(shows: featuredShows),
            ShowScroll(
              shows: originals,
              scrollLabel: 'Originals and Exclusives',
              showPrimeLabel: true,
            ),
            ShowScroll(
              shows: recommended,
              scrollLabel: 'Movies we think you\'ll like',
              showPrimeLabel: true,
            ),
            ShowScroll(
              shows: tvShows,
              scrollLabel: 'TV shows we think you\'ll like',
              showPrimeLabel: true,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
