import 'package:flutter/material.dart';
import 'package:tmdb/widgets/Topbanner.dart';
import 'package:tmdb/widgets/appbartitle.dart';
import 'package:tmdb/widgets/trailer.dart';
import 'package:tmdb/widgets/trending.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.cyan,
            ),
            onPressed: () {},
          )
        ],
        backgroundColor: Color(0xFF000033),
        title: Customtitle(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBannerSearchCard(),
            TrendingSection(),
            TrailerSection(),
          ],
        ),
      ),
    );
  }
}
