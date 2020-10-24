import 'package:flutter/material.dart';

class Leadhead extends StatelessWidget {
  const Leadhead({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              'Leaderboard',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          title: Alltimedits(),
          subtitle: Editsthisweek(),
        ),
      ],
    );
  }
}

class Editsthisweek extends StatelessWidget {
  const Editsthisweek({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.center,
              colors: [
                Colors.cyan,
                Colors.lightGreen,
              ],
              end: Alignment(-1.0, -1.0),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Edits This Week',
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

class Alltimedits extends StatelessWidget {
  const Alltimedits({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
//mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.center,
              colors: [
                Colors.red,
                Colors.red[100],
              ],
              end: Alignment(-1.0, -1.0),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'All Time Edits',
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
