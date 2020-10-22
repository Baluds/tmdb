import 'package:flutter/material.dart';

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

class Trailerlist extends StatelessWidget {
  const Trailerlist({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/img3.jpg',
                  fit: BoxFit.fill,
                  width: 250,
                  height: 160,
                ),
              ),
              Icon(
                Icons.play_arrow,
                size: 80,
                color: Colors.white,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              'Leo',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Text(
            '[pop,rock,jazz]',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
