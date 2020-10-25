import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tmdb/widgets/sicons.dart';

class FooterBoardTile extends StatelessWidget {
  const FooterBoardTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Color(0xff032541),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/footer_logo.jpg'),
            height: 140,
            width: 140,
          ),
          SocialIconWidget(iconVal: FontAwesomeIcons.github),
          SocialIconWidget(iconVal: FontAwesomeIcons.twitter),
          SocialIconWidget(iconVal: FontAwesomeIcons.linkedin),
          SocialIconWidget(iconVal: FontAwesomeIcons.instagram),
        ],
      ),
    );
  }
}
