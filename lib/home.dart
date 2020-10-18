import 'package:flutter/material.dart';
import 'package:tmdb/widgets/Topbanner.dart';
import 'package:tmdb/widgets/appbartitle.dart';

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
      body: Column(
        children: [
          TopBannerSearchCard(),
          TrendingSection(),
          TrailerSection(),
        ],
      ),
    );
  }
}

class TrailerSection extends StatelessWidget {
  const TrailerSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
    );
  }
}

class TrendingSection extends StatelessWidget {
  const TrendingSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 20,
      child: ListView(),
    );
  }
}
