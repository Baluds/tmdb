import 'package:flutter/material.dart';

class BannerText extends StatelessWidget {
  const BannerText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Millions of movies, TV shows and people to \ndiscover.Explore now.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 300,
          height: 40,
          child: TextField(
            style: TextStyle(fontSize: 14),
            decoration: new InputDecoration(
                contentPadding: EdgeInsets.all(8),
                border: new OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(50.0),
                  ),
                ),
                filled: true,
                hintStyle: new TextStyle(color: Colors.grey[800]),
                hintText: "Search for a name,tv show,person...",
                fillColor: Colors.white),
          ),
        ),
      ],
    );
  }
}
