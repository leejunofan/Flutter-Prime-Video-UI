//TODO: 5) Make DetailImage widget.
//TODO: 6) Make DetailTop widget.
//TODO: 7) Make ButtonRow widget.
//TODO: 8) Make DetailInfo widget.
//TODO: 9) Make DetailTabBar widget.
//TODO: 10) Add ShowScroll widget.
//TODO: 11) Smile :-).

import 'package:flutter/material.dart';
import 'package:prime_video_ui/data/data.dart';
import 'package:prime_video_ui/widgets/button_row.dart';
import 'package:prime_video_ui/widgets/detail_image.dart';
import 'package:prime_video_ui/widgets/detail_info.dart';
import 'package:prime_video_ui/widgets/detail_tab_bar.dart';
import 'package:prime_video_ui/widgets/detail_top.dart';
import 'package:prime_video_ui/widgets/show_scroll.dart';

class ShowDetail extends StatefulWidget {
  final Show show;
  ShowDetail({this.show});

  @override
  _ShowDetailState createState() => _ShowDetailState();
}

class _ShowDetailState extends State<ShowDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0e171e),
      appBar: AppBar(
        backgroundColor: Color(0xFF15202a),
      ),
      body: ListView(
        children: <Widget>[
          DetailImage(
            show: widget.show,
          ),
          DetailTop(show: widget.show),
          ButtonRow(),
          DetailInfo(show: widget.show),
          DetailTabBar(),
          ShowScroll(
            scrollLabel: 'Customers also watched',
            shows: alsoWatched,
            showPrimeLabel: false,
          )
        ],
      ),
    );
  }
}
