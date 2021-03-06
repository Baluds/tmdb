import 'package:flutter/material.dart';
import 'package:tmdb/widgets/Leaderboard_list.dart';
import 'package:tmdb/widgets/Leaderboardheader.dart';
import 'package:tmdb/widgets/Topbanner.dart';
import 'package:tmdb/widgets/appbartitle.dart';
import 'package:tmdb/widgets/footer.dart';
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
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child: Leadhead(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child: LeaderDetailsTile(),
            ),
            FooterBoardTile(),
          ],
        ),
      ),
    );
  }
}
