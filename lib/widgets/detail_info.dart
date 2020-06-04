import 'package:flutter/material.dart';
import 'package:prime_video_ui/data/data.dart';

class DetailInfo extends StatelessWidget {
  final Show show;
  DetailInfo({this.show});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.transparent,
            height: 70,
            child: SingleChildScrollView(
              child: Text(
                show.description,
                style:
                    TextStyle(fontSize: 14, height: 1.3, color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 190,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'IMDb',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF8097a3),
                  ),
                ),
                Text(
                  show.rating.toString(),
                  style: TextStyle(
                    color: Color(0xFF8097a3),
                    fontSize: 15,
                  ),
                ),
                Text(
                  '★',
                  style: TextStyle(
                    color: Color(0xFF8097a3),
                    fontSize: 15,
                  ),
                ),
                Text(
                  '(${show.nReviews})',
                  style: TextStyle(
                    color: Color(0xFF8097a3),
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  show.genre,
                  style: TextStyle(
                    color: Color(0xFF8097a3),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: 130,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  show.year,
                  style: TextStyle(
                    color: Color(0xFF8097a3),
                    fontSize: 15,
                  ),
                ),
                Text(
                  show.length,
                  style: TextStyle(
                    color: Color(0xFF8097a3),
                    fontSize: 15,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 0.1,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(3),
                      ),
                      border: Border.all(
                          color: show.ageCertificate == 18
                              ? Colors.red
                              : Colors.green)),
                  child: Center(
                    child: Text(
                      show.ageCertificate.toString(),
                      style: TextStyle(
                        fontSize: 10,
                        color: show.ageCertificate == 18
                            ? Colors.red
                            : Colors.green,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
