import 'dart:ui';
import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mouse_parallax/mouse_parallax.dart';
import 'package:origem_studio_site_updade2021/app/modules/splash/top_face_page.dart';
import 'package:origem_studio_site_updade2021/app/theme/theme.dart';
import 'package:vector_math/vector_math.dart' as vector;

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  final transitionType = ContainerTransitionType.fade;

  bool _faceVisible = false;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery
        .of(context)
        .size
        .height;
    final w = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
        backgroundColor: dark,
        body: Stack(
          children: [
            Container(
              color: dark,
              height: h,
              width: w,
            ),
            ParallaxStack(layers: [
              ParallaxLayer(
                  xRotation: 0.15,
                  yRotation: 0.15,
                  xOffset: 15,
                  yOffset: 15,
                  child: Stack(
                    children: [
                      Center(
                        child: SizedBox(
                          height: h * .9,
                          width: w * .9,
                          child: SvgPicture.asset(
                            'assets/image/origem_fundo_home.svg',
                          ),
                        ),
                      ),
                    ],
                  )
              ),
              ParallaxLayer(
                xRotation: 0.15,
                yRotation: 0.15,
                xOffset: 25,
                yOffset: 25,
                child: Center(
                  child: Container(
                    height: 100,
                    width: 400,
                    margin: EdgeInsets.only(top: 500),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('O',
                          style: TextStyle(
                              color: green,
                              fontSize: 40,
                              fontFamily: 'neuropol'
                          ),
                        ),
                        Container(
                          child: Text('rigem',
                            style: TextStyle(
                                color: orange,
                                fontSize: 40,
                                fontFamily: 'neuropol'
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 5
                          ),
                          child: Text('S',
                            style: TextStyle(
                                color: green,
                                fontSize: 40,
                                fontFamily: 'neuropol'
                            ),
                          ),
                        ),
                        Container(
                          child: Text('tudio',
                            style: TextStyle(
                                color: orange,
                                fontSize: 40,
                                fontFamily: 'neuropol'
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ParallaxLayer(
                xRotation: 0.35,
                yRotation: 0.35,
                xOffset: 50,
                yOffset: 50,
                child: Center(
                  child: Container(
                    height: 360,
                    width: 350,
                    child: Stack(
                      children: [
                        ///Top Face
                        Positioned(
                          top: 03,
                          left: 73,
                          child: Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.identity()
                                ..setEntry(3, 2, 0.001)
                                ..rotateX(vector.radians(-60)) //Eixo X
                                ..rotateY(vector.radians(0)) //Eixo Z
                                ..rotateZ(vector.radians(45)), //Eixo Y
                              child: OpenContainer(
                                transitionType: transitionType,
                                transitionDuration: Duration(milliseconds: 300),
                                openElevation: 16,
                                openBuilder: (context, _) => TopFacePage(),
                                closedBuilder: (context, VoidCallback openContainer) => MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  onEnter: (_) {
                                    setState(() {
                                      _faceVisible = !_faceVisible;
                                    });
                                  },
                                  onExit: (_) {
                                    setState(() {
                                      _faceVisible = !_faceVisible;
                                    });
                                  },
                                  child: PhysicalModel(
                                    child: Container(
                                      height: 185,
                                      width: 185,
                                    ),
                                    color: Colors.white,
                                    elevation: 16,
                                  ),
                                ),
                              )
                          ),
                        ),


                        /// Left Face
                        Positioned(
                          top: 122,
                          left: 005,
                          child: Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.identity()
                              ..setEntry(3, 2, 0.0011)
                              ..rotateX(vector.radians(40)) //Eixo X
                              ..rotateY(vector.radians(49)) //Eixo Z
                              ..rotateZ(vector.radians(-4)), //Eixo Y
                            child: Center(
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: PhysicalModel(
                                  child: Container(
                                    height: 185,
                                    width: 185,
                                  ),
                                  color: Colors.white,
                                  elevation: 16,
                                ),
                              ),
                            ),
                          ),
                        ),

                        /// Right Face
                        Positioned(
                          top: 122,
                          left: 140,
                          child: Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.identity()
                              ..setEntry(3, 2, 0.0011)
                              ..rotateX(vector.radians(40)) //Eixo X
                              ..rotateY(vector.radians(-49)) //Eixo Z
                              ..rotateZ(vector.radians(4)), //Eixo Y
                            child: Center(
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: PhysicalModel(
                                  child: Container(
                                    height: 185,
                                    width: 185,
                                  ),
                                  color: Colors.white,
                                  elevation: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ParallaxLayer(
                  child: Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          top: 105,
                          left: 390,
                          child: AnimatedOpacity(
                            opacity: _faceVisible ? 1.0 : 0.0,
                            duration: Duration(microseconds: 150),
                          ),
                        ),
                      ],
                    ),
                  )),
            ]),
          ],
        ));
  }
}

Widget faceImage() {
  return Container(
    color: Colors.blue,
    height: 50,
    width: 50,
  );
}
