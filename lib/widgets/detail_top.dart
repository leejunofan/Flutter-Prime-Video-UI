import 'package:flutter/material.dart';
import 'package:prime_video_ui/data/data.dart';

class DetailTop extends StatelessWidget {
  final Show show;
  DetailTop({this.show});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(25, 25, 25, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            show.title,
            style: TextStyle(
              fontSize: 38,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'prime',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF00a7df),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            'Included with Prime',
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF1077ae),
              borderRadius: BorderRadius.all(
                Radius.circular(3),
              ),
            ),
            child: FlatButton(
              onPressed: () => print('Watch now tapped'),
              child: Row(
                children: <Widget>[
                  Icon(Icons.play_arrow, size: 40, color: Colors.white),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Watch Now',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
