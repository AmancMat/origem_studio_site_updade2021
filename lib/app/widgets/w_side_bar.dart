import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:origem_studio_site_updade2021/app/theme/theme.dart';
import 'package:origem_studio_site_updade2021/app/widgets/w_button_bar_socialnetwork.dart';
import 'package:origem_studio_site_updade2021/app/widgets/w_drawer/w_drawer_d.dart';
import 'package:origem_studio_site_updade2021/app/widgets/w_drawer/w_drawer_m.dart';
import 'package:origem_studio_site_updade2021/app/widgets/w_drawer/w_drawer_t.dart';
import 'package:origem_studio_site_updade2021/app_router.dart';
import 'package:url_launcher/url_launcher.dart';

class WSideBar extends StatefulWidget {
  const WSideBar({Key? key}) : super(key: key);

  @override
  _WSideBarState createState() => _WSideBarState();
}

class _WSideBarState extends State<WSideBar> {
  final appRoutes = AppRouter();

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 900) {
        ///Mobile
        return Container(
            height: 50,
            width: w,
            decoration: BoxDecoration(
              color: darkGray,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.only(
                        left: 25,
                        right: 3
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/image/cub.svg',
                          fit: BoxFit.contain,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Origem Studio',
                        textScaleFactor: 1.1,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'neuropol',
                          color: minimumGray,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Row(
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
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 50,
                        width: 50,
                        color: softGray,
                        margin: EdgeInsets.only(
                          left: 15
                        ),
                        child: IconButton(
                            onPressed: () {
                              showDialog(
                                  barrierColor: Colors.transparent,
                                  barrierDismissible: true,
                                  context: context,
                                  builder: (context) => WDrawerM(
                                    pages: appRoutes.listPages,
                                  ));
                            },
                            icon: Icon(Icons.menu_outlined,
                              color: orange,
                              size: 30,
                            ),
                        )
                      ),
                    ),
                  ],
                ),
              ],
            ));
      }
      if (constrains.maxWidth < 1420) {
        ///Tablet
        return Container(
          height: h,
          width: 70,
          decoration: BoxDecoration(
            color: darkGray,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: ListView(
            children: [
              Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.only(top: h * 0.13,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/image/cub.svg',
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 70),
                child: Container(
                  height: 50,
                  width: 50,
                  child: IconButton(
                    onPressed: () {
                      showDialog(
                          barrierColor: Colors.transparent,
                          barrierDismissible: true,
                          context: context,
                          builder: (context) => WDrawerT(
                            pages: appRoutes.listPages,
                          ));
                    },
                    icon: Icon(Icons.menu_outlined,
                      color: orange,
                      size: 40,
                    ),
                  ),
                )
              ),
              Container(
                  height: 15,
                  width: w,
                  child: Center(
                    child: Text(
                      'Menu',
                      style: TextStyle(color: nanoGray, fontSize: 13),
                    ),
                  )),
              Column(
                children: [
                  Container(
                    height: 07,
                    width: 40,
                    margin: EdgeInsets.only(
                      top: 350,
                    ),
                    color: orange,
                  ),
                  WButtonBarSocialNetwork(),
                  Container(
                      height: 70,
                      width: 70,
                      color: softGray,
                      padding: EdgeInsets.all(9.5),
                      child: GridView.count(
                        crossAxisCount: 3,
                        children: [
                          Container(
                            height: 0.05,
                            width: 0.05,
                            margin: EdgeInsets.all(5.5),
                            child: CircleAvatar(
                              backgroundColor: orange,
                            ),
                          ),
                          Container(
                            height: 0.05,
                            width: 0.05,
                            margin: EdgeInsets.all(5.5),
                            child: CircleAvatar(
                              backgroundColor: orange,
                            ),
                          ),
                          Container(
                            height: 0.05,
                            width: 0.05,
                            margin: EdgeInsets.all(5.5),
                            child: CircleAvatar(
                              backgroundColor: orange,
                            ),
                          ),
                          Container(
                            height: 0.05,
                            width: 0.05,
                            margin: EdgeInsets.all(5.5),
                            child: CircleAvatar(
                              backgroundColor: orange,
                            ),
                          ),
                          Container(
                            height: 0.05,
                            width: 0.05,
                            margin: EdgeInsets.all(5.5),
                            child: CircleAvatar(
                              backgroundColor: orange,
                            ),
                          ),
                          Container(
                            height: 0.05,
                            width: 0.05,
                            margin: EdgeInsets.all(5.5),
                            child: CircleAvatar(
                              backgroundColor: orange,
                            ),
                          ),
                          Container(
                            height: 0.05,
                            width: 0.05,
                            margin: EdgeInsets.all(5.5),
                            child: CircleAvatar(
                              backgroundColor: orange,
                            ),
                          ),
                          Container(
                            height: 0.05,
                            width: 0.05,
                            margin: EdgeInsets.all(5.5),
                            child: CircleAvatar(
                              backgroundColor: orange,
                            ),
                          ),
                          Container(
                            height: 0.05,
                            width: 0.05,
                            margin: EdgeInsets.all(5.5),
                            child: CircleAvatar(
                              backgroundColor: orange,
                            ),
                          ),
                        ],
                      )
                  ),
                ],
              ),
            ],
          ),
        );
      } else {
        ///Desktop
        return Row(
          children: [
            Container(
              height: h,
              width: 70,
              decoration: BoxDecoration(
                color: darkGray,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: ListView(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.only(top: h * 0.13,
                    ),
                    child: SvgPicture.asset(
                      'assets/image/cub.svg',
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 70),
                    child: Container(
                      height: 50,
                      width: 50,
                      child: IconButton(
                        onPressed: () {
                          showDialog(
                              barrierColor: Colors.transparent,
                              barrierDismissible: true,
                              context: context,
                              builder: (context) => WDrawerD(
                                pages: appRoutes.listPages,
                              ));
                        },
                        icon: Icon(Icons.menu_rounded,
                          color: orange,
                          size: 40,
                        ),
                      ),
                    )
                  ),
                  Container(
                      height: 15,
                      width: w,
                      child: Center(
                        child: Text(
                          'Menu',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: nanoGray,
                              fontSize: 13),
                        ),
                      )),
                  Container(
                    height: 07,
                    width: 40,
                    margin: EdgeInsets.only(
                      top: 350,
                    ),
                    color: orange,
                  ),
                  WButtonBarSocialNetwork(),
                  Container(
                    height: 70,
                    width: 70,
                    color: softGray,
                      padding: EdgeInsets.all(9.5),
                    child: GridView.count(
                      crossAxisCount: 3,
                      children: [
                        Container(
                          height: 0.05,
                          width: 0.05,
                          margin: EdgeInsets.all(5.5),
                          child: CircleAvatar(
                            backgroundColor: orange,
                          ),
                        ),
                        Container(
                          height: 0.05,
                          width: 0.05,
                          margin: EdgeInsets.all(5.5),
                          child: CircleAvatar(
                            backgroundColor: orange,
                          ),
                        ),
                        Container(
                          height: 0.05,
                          width: 0.05,
                          margin: EdgeInsets.all(5.5),
                          child: CircleAvatar(
                            backgroundColor: orange,
                          ),
                        ),
                        Container(
                          height: 0.05,
                          width: 0.05,
                          margin: EdgeInsets.all(5.5),
                          child: CircleAvatar(
                            backgroundColor: orange,
                          ),
                        ),
                        Container(
                          height: 0.05,
                          width: 0.05,
                          margin: EdgeInsets.all(5.5),
                          child: CircleAvatar(
                            backgroundColor: orange,
                          ),
                        ),
                        Container(
                          height: 0.05,
                          width: 0.05,
                          margin: EdgeInsets.all(5.5),
                          child: CircleAvatar(
                            backgroundColor: orange,
                          ),
                        ),
                        Container(
                          height: 0.05,
                          width: 0.05,
                          margin: EdgeInsets.all(5.5),
                          child: CircleAvatar(
                            backgroundColor: orange,
                          ),
                        ),
                        Container(
                          height: 0.05,
                          width: 0.05,
                          margin: EdgeInsets.all(5.5),
                          child: CircleAvatar(
                            backgroundColor: orange,
                          ),
                        ),
                        Container(
                          height: 0.05,
                          width: 0.05,
                          margin: EdgeInsets.all(5.5),
                          child: CircleAvatar(
                            backgroundColor: orange,
                          ),
                        ),
                      ],
                    )
                  ),
                ],
              ),
            ),
          ],
        );
      }
    });
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