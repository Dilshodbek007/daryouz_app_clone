


import 'package:daryouz/pages/drawer/drawer_page.dart';
import 'package:daryouz/pages/latest_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Daryo'),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(child: Text('So\'ngi yangiliklar'.toUpperCase()),),
              Tab(child: Text('Asosiy yangiliklar'.toUpperCase()),),
              Tab(child: Text('Eng ko\'p'.toUpperCase()),),

            ],
          ),
        ),
        body: TabBarView(
          children: [
            LatestPage(),
            Container(color: Colors.yellow),
            Container(color: Colors.green),
          ],
        ),
        drawer: const MyDrawer(),
      ),
    );
  }
}
