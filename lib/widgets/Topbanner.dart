import 'package:flutter/material.dart';
import 'package:tmdb/widgets/Banner.dart';

class TopBannerSearchCard extends StatelessWidget {
  const TopBannerSearchCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset(
            'assets/img1.jpg',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: 220,
          ),
          Container(
            height: 220,
            alignment: Alignment.bottomCenter,
            child: Center(
              child: BannerText(),
            ),
          ),
        ],
      ),
    );
  }
}
