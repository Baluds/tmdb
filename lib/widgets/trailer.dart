import 'package:flutter/material.dart';
import 'package:tmdb/widgets/trailerlist.dart';

class TrailerSection extends StatelessWidget {
  const TrailerSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 350,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: new ColorFilter.mode(
                  Colors.blueGrey.withOpacity(0.4), BlendMode.lighten),
              fit: BoxFit.cover,
              image: NetworkImage('https://www.placecage.com/640/360'),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Latest Trailers',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 230,
              width: 280,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Trailerlist(),
                  Trailerlist(),
                  Trailerlist(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
