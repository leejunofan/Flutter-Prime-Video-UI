import 'package:flutter/material.dart';
import 'package:prime_video_ui/data/data.dart';

class DetailImage extends StatelessWidget {
  final Show show;
  DetailImage({this.show});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: double.infinity,
      child: Image.asset(show.image, fit: BoxFit.cover),
    );
  }
}
