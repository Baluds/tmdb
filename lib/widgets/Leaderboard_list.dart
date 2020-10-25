import 'package:flutter/material.dart';
import 'package:tmdb/model/ratings.dart';
import 'package:tmdb/widgets/ratwid.dart';

class LeaderDetailsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      child: GridView.count(
        crossAxisCount: 1,
        mainAxisSpacing: 0,
        childAspectRatio: MediaQuery.of(context).size.width < 1000 ? 3.0 : 6.0,
        shrinkWrap: true,
        children: ratings.map<Widget>((rate) => leaderTile(rate)).toList(),
      ),
    );
  }
}

leaderTile(Ratings rate) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: InkWell(
              child: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(rate.leaderImage),
                backgroundColor: Colors.transparent,
              ),
              onTap: () {
                //
              },
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            InkWell(
              child: Text(
                rate.leaderDetails,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            RatingWidget(rate),
          ]),
        ],
      ),
    );
