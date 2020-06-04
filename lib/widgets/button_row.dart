import 'package:flutter/material.dart';

class Button {
  final String title;
  final Icon icon;

  Button({this.title, this.icon});
}

class ButtonRow extends StatelessWidget {
  List<Button> btns = [
    Button(
      title: 'Trailer',
      icon: Icon(Icons.play_arrow),
    ),
    Button(
      title: 'Watchlist',
      icon: Icon(Icons.add),
    ),
    Button(
      title: 'Download',
      icon: Icon(Icons.file_download),
    ),
    Button(
      title: 'Share',
      icon: Icon(Icons.share),
    ),
  ];

  Row buildButtons() {
    List<Widget> buttons = [];
    btns.forEach((btn) {
      buttons.add(Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButton(
            onPressed: () => print('${btn.title} pressed'),
            icon: btn.icon,
            color: Colors.grey[400],
            iconSize: 30,
          ),
          Text(
            btn.title,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[400],
            ),
          ),
        ],
      ));
    });
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: buttons,
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildButtons();
  }
}
