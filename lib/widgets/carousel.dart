import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:prime_video_ui/data/data.dart';
import 'package:prime_video_ui/screens/detail_screen.dart';

class ShowCarousel extends StatelessWidget {
  final List<Show> shows;
  ShowCarousel({this.shows});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.0,
      width: double.infinity,
      child: Carousel(
        images: shows
            .map(
              (show) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ShowDetail(show: show),
                    ),
                  );
                },
                child: Image.asset(
                  show.image,
                  fit: BoxFit.cover,
                ),
              ),
            )
            .toList(),
        autoplay: true,
        dotSize: 7,
        dotSpacing: 15,
        dotColor: Colors.grey,
        dotIncreasedColor: Colors.white,
        dotBgColor: Colors.transparent,
        indicatorBgPadding: 5,
        noRadiusForIndicator: true,
      ),
    );
  }
}
