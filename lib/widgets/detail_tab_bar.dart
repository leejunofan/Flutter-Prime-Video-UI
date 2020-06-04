import 'package:flutter/material.dart';

class DetailTabBar extends StatefulWidget {
  @override
  _DetailTabBarState createState() => _DetailTabBarState();
}

class _DetailTabBarState extends State<DetailTabBar>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(initialIndex: 0, length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TabBar(
          controller: tabController,
          labelColor: Colors.white,
          unselectedLabelColor: Color(0xFF8097a3),
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 3,
          isScrollable: true,
          tabs: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width / 3,
              child: Tab(
                child: Text('Related',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 3,
              child: Tab(
                child: Text(
                  'More details',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
