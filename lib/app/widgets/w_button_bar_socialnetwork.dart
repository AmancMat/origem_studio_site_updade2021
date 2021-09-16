import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:origem_studio_site_updade2021/app/theme/theme.dart';
import 'package:url_launcher/url_launcher.dart';

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
      color: lightGray,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 35,
            width: 30,
            decoration: BoxDecoration(
                border: Border.all(
                    color: nanoGray,
                    width: .5
                )
            ),
            child: IconButton(
              onPressed: _faceBookURL,
              icon: FaIcon(FontAwesomeIcons.facebookF),
              color: nanoGray,
              iconSize: 15,
            ),
          ),
          Container(
            height: 35,
            width: 30,
            decoration: BoxDecoration(
                border: Border.all(
                    color: nanoGray,
                    width: .5
                )
            ),
            child: IconButton(
              onPressed: _instaURL,
              icon: FaIcon(FontAwesomeIcons.instagramSquare),
              color: nanoGray,
              iconSize: 15,
            ),
          ),
          Container(
            height: 35,
            width: 30,
            decoration: BoxDecoration(
                border: Border.all(
                    color: nanoGray,
                    width: .5
                )
            ),
            child: IconButton(
              onPressed: _twitterURL,
              icon: FaIcon(FontAwesomeIcons.twitter),
              color: nanoGray,
              iconSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}


_faceBookURL() async {
  const url = 'https://www.facebook.com/origem.studio';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_instaURL() async {
  const url = 'https://www.instagram.com/origem.studio/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_twitterURL() async {
  const url = 'https://twitter.com/StudioOrigem';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}