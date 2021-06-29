import 'package:animated_icon_button/animated_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:origem_studio_site_updade2021/app/theme/theme.dart';
import 'package:origem_studio_site_updade2021/app/widgets/w_button_bar_socialnetwork.dart';
import 'package:origem_studio_site_updade2021/app/widgets/w_drawer/w_drawer_d.dart';
import 'package:origem_studio_site_updade2021/app/widgets/w_drawer/w_drawer_m.dart';
import 'package:origem_studio_site_updade2021/app/widgets/w_drawer/w_drawer_t.dart';
import 'package:origem_studio_site_updade2021/app_router.dart';

class WSideBar extends StatefulWidget {
  const WSideBar({Key? key}) : super(key: key);

  @override
  _WSideBarState createState() => _WSideBarState();
}

class _WSideBarState extends State<WSideBar>
    with SingleTickerProviderStateMixin {
  final appRoutes = AppRouter();

  late AnimationController _animationController;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 450));
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 900) {
        ///Mobile
        return Container(
            height: 70,
            width: w,
            color: darkgray,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 70,
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/image/cube.svg',
                      color: Colors.white,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 70,
                    width: 70,
                    color: orange,
                    child: AnimatedIconButton(
                      icons: const <AnimatedIconItem>[
                        AnimatedIconItem(
                          icon: Icon(FontAwesomeIcons.alignLeft),
                        ),
                        AnimatedIconItem(
                            icon: Icon(
                          FontAwesomeIcons.chevronLeft,
                          color: Color(0xfff68338),
                        )),
                      ],
                      onPressed: () => _handleOnPressed(
                        showDialog(
                            barrierColor: Colors.transparent,
                            barrierDismissible: true,
                            context: context,
                            builder: (context) => WDrawerM(
                              pages: appRoutes.listPages,
                            )),
                      )
                    ),
                  ),
                ),
              ],
            ));
      }
      if (constrains.maxWidth < 1420) {
        ///Tablet
        return Container(
          height: h,
          width: 70,
          color: darkgray,
          child: ListView(
            children: [
              Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.only(top: h * 0.13),
                child: SvgPicture.asset(
                  'assets/image/cube.svg',
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 70),
                child: AnimatedIconButton(
                  icons: const <AnimatedIconItem>[
                    AnimatedIconItem(
                      icon: Icon(FontAwesomeIcons.alignLeft),
                    ),
                    AnimatedIconItem(
                        icon: Icon(
                      FontAwesomeIcons.chevronLeft,
                      color: Color(0xfff68338),
                    )),
                  ],
                  onPressed: () => _handleOnPressed(
                    showDialog(
                        barrierColor: Colors.transparent,
                        barrierDismissible: true,
                        context: context,
                        builder: (context) => WDrawerT(
                          pages: appRoutes.listPages,
                        )),
                  )
                ),
              ),
              Container(
                  height: 15,
                  width: w,
                  child: Center(
                    child: Text(
                      'Menu',
                      style: TextStyle(color: nanogray, fontSize: 13),
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
                color: orange,
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
              color: darkgray,
              child: ListView(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.only(top: h * 0.13),
                    child: SvgPicture.asset(
                      'assets/image/cube.svg',
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 70),
                    child: IconButton(
                      iconSize: 45,
                      icon: AnimatedIcon(
                        icon: AnimatedIcons.menu_close,
                        progress: _animationController,
                      ),
                      onPressed: () => _handleOnPressed(
                        showDialog(
                            barrierColor: Colors.transparent,
                            barrierDismissible: true,
                            context: context,
                            builder: (context) => WDrawerD(
                              pages: appRoutes.listPages,
                            )),
                      )
                    ),
                  ),
                  Container(
                      height: 15,
                      width: w,
                      child: Center(
                        child: Text(
                          'Menu',
                          style: TextStyle(color: nanogray, fontSize: 13),
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
                    color: orange,
                  ),
                ],
              ),
            ),
          ],
        );
      }
    });
  }

  void _handleOnPressed(Future<dynamic> showDialog) {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying
          ? _animationController.forward()
          : _animationController.reverse();
    });
  }
}
