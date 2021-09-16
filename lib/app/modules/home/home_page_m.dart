import 'dart:ui';
import 'package:card_swiper/card_swiper.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:origem_studio_site_updade2021/app/core/side_bar/presentation/components/item.dart';
import 'package:origem_studio_site_updade2021/app/widgets/cards/card_home_d.dart';
import 'package:origem_studio_site_updade2021/app/widgets/w_contatos/w_contatos_d.dart';
import 'package:origem_studio_site_updade2021/app/widgets/w_contatos/w_contatos_m.dart';
import 'package:origem_studio_site_updade2021/app/widgets/w_contatos/w_contatos_t.dart';
import '../../theme/theme.dart';

class HomePageM extends StatefulWidget {
  @override
  _HomePageMState createState() => _HomePageMState();
}

class _HomePageMState extends State<HomePageM> {
  List imgList = [
    'assets/image/pet06.jpg',
    'assets/image/shop03.jpg',
    'assets/image/comedy01.jpg',
    'assets/image/desk.jpg'
  ];

  List logoList = [
    'assets/image/logo_patas.png',
    'assets/image/ssinaliza.png',
    'assets/image/comedy_stream.png',
    'assets/image/orcamento_mestre.png',
  ];

  List titleList = [
    'Patas',
    'Sinaliza Compras',
    'Comedy Stream',
    'Orçamento Mestre',
  ];

  List contentList = [
    'Uma Rede social exclusiva para animais de estimação, nela seu pet pode adicionar outros pets, publicar e compartilhar conteúdo, curtir fotos e vídeos de amigos pets. Tudo isso funcionará através dos seus pais (tutores). Além de rede social, o Patas também disponibilizará, ferramentas incríveis para seu pet!',
    'Simples, prático... unindo empresas e clientes! Obtenha visibilidade no comércio da sua região, e venda ainda mais!!!',
    'Toda a magia do Stand Up Comedy, agora está centralizada em uma única plataforma! Nada de ficar garimpando as melhores piadas em redes sociais ou apps de streaming de vídeos avulsos!!!',
    'Crie, edite e envie seus orçamentos para seus clientes. Nosso arquivo de orçamento, é totalmente customizável, possibilitando que o usuário altere cores do layout, além de possibilitar a edição de cada item da lista do orçamento.',
  ];

  List colorList = [
    Colors.deepOrange,
    Colors.purple,
    Colors.amberAccent,
    Colors.blue,
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
              Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: h,
                        width: w,
                        decoration: BoxDecoration(
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
                        child: Swiper(
                            itemCount: 4,
                          loop: true,
                          autoplay: true,
                          duration: 600,
                          autoplayDelay: 9000,
                          curve: Curves.easeInBack,
                          scrollDirection: Axis.vertical,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index){
                            return Container(
                              width: w,
                              decoration: BoxDecoration(
                                  color: softGray,
                                  image: DecorationImage(
                                    image: ExactAssetImage(
                                      imgList[index],
                                      scale: 1,
                                    ),
                                    fit: BoxFit.cover,
                                  )),
                            );
                          },
                        )
                      ),
                      Container(
                          height: h,
                          width: 270,
                          padding: EdgeInsets.all(8),
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
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Card(
                                    color: Colors.white.withOpacity(0.3),
                                    elevation: 16,
                                    child: Container(
                                      height: 160,
                                      width: 113,
                                      padding: EdgeInsets.all(16),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.phone_android,
                                            color: minimumGray,
                                            size: 40,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 40,
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
                                                fontSize: 12,
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
                                      height: 160,
                                      width: 113,
                                      padding: EdgeInsets.all(16),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.web_rounded,
                                            color: minimumGray,
                                            size: 40,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 40,
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
                                                fontSize: 12,
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Card(
                                    color: Colors.white.withOpacity(0.3),
                                    elevation: 16,
                                    child: Container(
                                      height: 160,
                                      width: 113,
                                      padding: EdgeInsets.all(16),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.desktop_windows_outlined,
                                            color: minimumGray,
                                            size: 40,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 40,
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
                                                fontSize: 10,
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
                                      height: 160,
                                      width: 113,
                                      padding: EdgeInsets.all(16),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.people_alt_outlined,
                                            color: minimumGray,
                                            size: 40,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 40,
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
                                                fontSize: 10,
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
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Card(
                                      color: Colors.white.withOpacity(0.3),
                                      elevation: 16,
                                      child: Container(
                                        height: 160,
                                        width: 113,
                                        padding: EdgeInsets.all(16),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.shopping_basket_outlined,
                                              color: minimumGray,
                                              size: 40,
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 40,
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
                                                  fontSize: 12,
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
                        height: 700,
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
                                  margin: EdgeInsets.only(top: 50),
                                  child: Text(
                                    'Entre em Contato',
                                    style: TextStyle(
                                        color: minimumGray,
                                        fontSize: 45,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                WContatosM(),
                              ],
                            )),
                      ),
                      Container(
                        height: 50,
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
                    top: 110,
                    left: 20,
                    child: Container(
                      height: 380,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          borderRadius:
                          BorderRadius.all(Radius.circular(10)),
                          border:
                          Border.all(width: 1.5, color: Colors.grey)),
                      child: Swiper(
                          itemCount: 4,
                        loop: true,
                        autoplay: true,
                        duration: 600,
                        autoplayDelay: 9000,
                        curve: Curves.easeInBack,
                        scrollDirection: Axis.horizontal,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index){
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50,
                                  width: 300,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        child:
                                        Image.asset(logoList[index],
                                        ),
                                      ),
                                      Container(
                                        margin:
                                        EdgeInsets.only(top: 20, left: 1),
                                        child: Text(
                                          titleList[index],
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: colorList[index],
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
                                Container(
                                  height: 300,
                                  width: 250,
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
                                      contentList[index],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: minimumGray,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                )
                              ],
                            );
                        },
                      )
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
