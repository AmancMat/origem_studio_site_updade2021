import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:origem_studio_site_updade2021/app/theme/theme.dart';

class WButtonBarSocialNetwork extends StatelessWidget {
  const WButtonBarSocialNetwork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 215,
      width: 70,
      padding: EdgeInsets.only(
          top: 25,
          bottom: 35
      ),
      color: lightgray,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 35,
            width: 30,
            decoration: BoxDecoration(
                border: Border.all(
                    color: nanogray,
                    width: .5
                )
            ),
            child: IconButton(
              onPressed: (){},
              icon: FaIcon(FontAwesomeIcons.facebookF),
              color: nanogray,
              iconSize: 15,
            ),
          ),
          Container(
            height: 35,
            width: 30,
            decoration: BoxDecoration(
                border: Border.all(
                    color: nanogray,
                    width: .5
                )
            ),
            child: IconButton(
              onPressed: (){},
              icon: FaIcon(FontAwesomeIcons.instagramSquare),
              color: nanogray,
              iconSize: 15,
            ),
          ),
          Container(
            height: 35,
            width: 30,
            decoration: BoxDecoration(
                border: Border.all(
                    color: nanogray,
                    width: .5
                )
            ),
            child: IconButton(
              onPressed: (){},
              icon: FaIcon(FontAwesomeIcons.twitter),
              color: nanogray,
              iconSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
