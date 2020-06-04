import 'package:flutter/material.dart';
import 'package:prime_video_ui/data/data.dart';
import 'package:prime_video_ui/screens/detail_screen.dart';

class ShowScroll extends StatelessWidget {
  final List<Show> shows;
  final String scrollLabel;
  final bool showPrimeLabel;
  ShowScroll({this.shows, this.scrollLabel, this.showPrimeLabel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              showPrimeLabel
                  ? Text(
                      'Included with Prime',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF00a7df),
                      ),
                    )
                  : SizedBox.shrink(),
              Text(
                scrollLabel,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          height: 100,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 15),
            scrollDirection: Axis.horizontal,
            itemCount: shows.length,
            itemBuilder: (BuildContext context, int index) {
              Show show = shows[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ShowDetail(show: show),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: 180,
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: Image(
                        image: AssetImage(show.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
