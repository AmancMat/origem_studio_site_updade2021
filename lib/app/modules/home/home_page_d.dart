import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:origem_studio_site_updade2021/app/widgets/cards/card_home_d.dart';
import 'package:origem_studio_site_updade2021/app/widgets/w_contatos/w_contatos_d.dart';
import '../../theme/theme.dart';

class HomePageD extends StatefulWidget {
  @override
  _HomePageDState createState() => _HomePageDState();
}

class _HomePageDState extends State<HomePageD> {
  List imgList = [
    'assets/image/pet06.jpg',
    'assets/image/shop03.jpg',
    'assets/image/comedy01.jpg',
    'assets/image/desk.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Stack(
        children: [
          Container(
            height: h,
            width: 1400,
            child: Image.asset(
              'assets/image/backgroundcity.jpg',
              fit: BoxFit.cover,
            ),
          ),
          ListView(
            children: [
              Padding(
                  padding: EdgeInsets.only(
                    left: 70,
                  ),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: h,
                            width: w,
                            decoration: BoxDecoration(
                              border: Border.all(width: 10, color: blackGray),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 7), // changes position of shadow
                                ),
                              ],
                            ),
                            child: CarouselSlider(
                              options: CarouselOptions(
                                  height: double.maxFinite,
                                  scrollPhysics: NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  enlargeCenterPage: false,
                                  autoPlay: true,
                                  aspectRatio: 1.0,
                                  viewportFraction: 0.99999,
                                  autoPlayCurve: Curves.easeInBack,
                                  enableInfiniteScroll: true,
                                  autoPlayInterval: Duration(seconds: 6),
                                  autoPlayAnimationDuration:
                                      Duration(milliseconds: 900),
                                  enlargeStrategy:
                                      CenterPageEnlargeStrategy.height),
                              items: imgList.map((item) {
                                return Container(
                                  width: w,
                                  decoration: BoxDecoration(
                                      color: softGray,
                                      image: DecorationImage(
                                        image: ExactAssetImage(
                                          '$item',
                                          scale: 1,
                                        ),
                                        fit: BoxFit.cover,
                                      )),
                                );
                              }).toList(),
                            ),
                          ),
                          Container(
                            height: h,
                            width: 1200,
                            padding: EdgeInsets.all(80),
                            decoration: BoxDecoration(
                              color: softGray,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 7), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Card(
                                      color: Colors.white.withOpacity(0.3),
                                      elevation: 16,
                                      child: Container(
                                        height: 350,
                                        width: 250,
                                        padding: EdgeInsets.all(16),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.phone_android,
                                              color: minimumGray,
                                              size: 115,
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                top: 60,
                                                bottom: 10
                                              ),
                                              child: Divider(
                                                height: 5,
                                                color: green,
                                                thickness: 1.5,
                                              ),
                                            ),
                                            Text('Mobile Development',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                color: minimumGray,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                shadows: <Shadow>[
                                                  Shadow(
                                                    offset: Offset(5.0, 5.0),
                                                    blurRadius: 3.0,
                                                    color: Color.fromARGB(255, 0, 0, 0),
                                                  ),
                                                ]),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Card(
                                      color: Colors.white.withOpacity(0.3),
                                      elevation: 16,
                                      child: Container(
                                        height: 350,
                                        width: 250,
                                        padding: EdgeInsets.all(16),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.web_rounded,
                                              color: minimumGray,
                                              size: 115,
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 60,
                                                  bottom: 10
                                              ),
                                              child: Divider(
                                                height: 5,
                                                color: green,
                                                thickness: 1.5,
                                              ),
                                            ),
                                            Text('Web Development',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: minimumGray,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  shadows: <Shadow>[
                                                    Shadow(
                                                      offset: Offset(5.0, 5.0),
                                                      blurRadius: 3.0,
                                                      color: Color.fromARGB(255, 0, 0, 0),
                                                    ),
                                                  ]),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Card(
                                      color: Colors.white.withOpacity(0.3),
                                      elevation: 16,
                                      child: Container(
                                        height: 350,
                                        width: 250,
                                        padding: EdgeInsets.all(16),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.desktop_windows_outlined,
                                              color: minimumGray,
                                              size: 115,
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 60,
                                                  bottom: 10
                                              ),
                                              child: Divider(
                                                height: 5,
                                                color: green,
                                                thickness: 1.5,
                                              ),
                                            ),
                                            Text('Desktop Development',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: minimumGray,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  shadows: <Shadow>[
                                                    Shadow(
                                                      offset: Offset(5.0, 5.0),
                                                      blurRadius: 3.0,
                                                      color: Color.fromARGB(255, 0, 0, 0),
                                                    ),
                                                  ]),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    right: 390
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Card(
                                        color: Colors.white.withOpacity(0.3),
                                        elevation: 16,
                                        child: Container(
                                          height: 350,
                                          width: 250,
                                          padding: EdgeInsets.all(16),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.people_alt_outlined,
                                                color: minimumGray,
                                                size: 115,
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    top: 60,
                                                    bottom: 10
                                                ),
                                                child: Divider(
                                                  height: 5,
                                                  color: green,
                                                  thickness: 1.5,
                                                ),
                                              ),
                                              Text('Social Network Development',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: minimumGray,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    shadows: <Shadow>[
                                                      Shadow(
                                                        offset: Offset(5.0, 5.0),
                                                        blurRadius: 3.0,
                                                        color: Color.fromARGB(255, 0, 0, 0),
                                                      ),
                                                    ]),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Card(
                                        color: Colors.white.withOpacity(0.3),
                                        elevation: 16,
                                        child: Container(
                                          height: 350,
                                          width: 250,
                                          padding: EdgeInsets.all(16),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.shopping_basket_outlined,
                                                color: minimumGray,
                                                size: 115,
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    top: 60,
                                                    bottom: 10
                                                ),
                                                child: Divider(
                                                  height: 5,
                                                  color: green,
                                                  thickness: 1.5,
                                                ),
                                              ),
                                              Text('E-commerce Development',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: minimumGray,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    shadows: <Shadow>[
                                                      Shadow(
                                                        offset: Offset(5.0, 5.0),
                                                        blurRadius: 3.0,
                                                        color: Color.fromARGB(255, 0, 0, 0),
                                                      ),
                                                    ]),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ),
                          Container(
                            height: 900,
                            width: w,
                            decoration: BoxDecoration(
                              color: darkGray,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, -3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Center(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 200),
                                  child: Text(
                                    'Entre em Contato',
                                    style: TextStyle(
                                        color: minimumGray,
                                        fontSize: 45,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                WContatosD(),
                              ],
                            )),
                          ),
                          Container(
                            height: 80,
                            width: w,
                            color: darkGray,
                            child: Center(
                              child: Text(
                                'Origem Studio | 2021',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'neuropol'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 100,
                        left: 310,
                        child: Container(
                          height: 700,
                          width: 450,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.4),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              border:
                                  Border.all(width: 1.5, color: Colors.grey)),
                          child: CarouselSlider(
                            options: CarouselOptions(
                                scrollPhysics: NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                enlargeCenterPage: false,
                                aspectRatio: 1.0,
                                viewportFraction: 0.99999,
                                autoPlay: true,
                                autoPlayCurve: Curves.easeInBack,
                                enableInfiniteScroll: true,
                                autoPlayInterval: Duration(seconds: 6),
                                autoPlayAnimationDuration:
                                    Duration(milliseconds: 900),
                                enlargeStrategy:
                                    CenterPageEnlargeStrategy.height),
                            items: cardItems.map((cardItem) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 100,
                                    width: 400,
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 60,
                                          child:
                                              Image.asset(cardItem.listLogo),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.only(top: 30, left: 1),
                                          child: Text(
                                            cardItem.listTitle,
                                            style: TextStyle(
                                              fontSize: 25,
                                              color: cardItem.color,
                                              shadows: <Shadow>[
                                                Shadow(
                                                  offset: Offset(6.0, 6.0),
                                                  blurRadius: 10.5,
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(2)),
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                        sigmaX: 10.0,
                                        sigmaY: 10.0,
                                      ),
                                      child: Container(
                                        height: 500,
                                        width: 380,
                                        margin: EdgeInsets.only(
                                            top: 15,
                                            bottom: 5,
                                            left: 5,
                                            right: 5),
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.black.withOpacity(0.6),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            border: Border.all(
                                                width: 1.5,
                                                color: Colors.grey
                                                    .withOpacity(0.8))),
                                        child: Center(
                                          child: Text(
                                            cardItem.listContent,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: minimumGray,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
