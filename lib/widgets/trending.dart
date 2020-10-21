import 'package:flutter/material.dart';
import 'package:tmdb/widgets/listtile.dart';

class TrendingSection extends StatelessWidget {
  const TrendingSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 8, right: 8),
        children: [
          Listcards(
            clr: Colors.cyan,
          ),
          Listcards(
            clr: Colors.blue,
          ),
          Listcards(
            clr: Colors.lightBlue,
          ),
          Listcards(
            clr: Colors.lightBlueAccent,
          ),
          Listcards(
            clr: Colors.teal,
          ),
        ],
      ),
    );
  }
}
