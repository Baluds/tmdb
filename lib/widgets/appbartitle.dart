import 'package:flutter/material.dart';

class Customtitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[
        Colors.lightGreen,
        Colors.cyan[200],
        Colors.cyan[400],
        Colors.cyan,
      ],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Row(
        children: [
          Text(
            'TMDB',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              foreground: Paint()..shader = linearGradient,
              letterSpacing: 2,
            ),
          ),
          SizedBox(
            width: 4,
          ),
          Container(
            height: 20,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.circular(20),
            ),
          )
        ],
      ),
    );
  }
}
