import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    'assets/image/comedy.jpg',
    'assets/image/desk.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          color: darkgray,
          height: h,
          width: w,
          child: WContatosD(),
        ),
        ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                bottom: 700,
                left: 86,
              ),
              child: Container(
                  height: h,
                  width: w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: lightgray, width: 8),
                  ),
                  child: Stack(
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                            scrollPhysics: NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            enlargeCenterPage: false,
                            autoPlay: true,
                            aspectRatio: 1.924,
                            viewportFraction: 0.999,
                            autoPlayCurve: Curves.easeInBack,
                            enableInfiniteScroll: true,
                            autoPlayInterval: Duration(seconds: 6),
                            autoPlayAnimationDuration:
                            Duration(milliseconds: 900),
                            enlargeStrategy: CenterPageEnlargeStrategy.height),
                        items: imgList.map((item) {
                          return Container(
                            height: h,
                            width: w,
                            child: Image.asset(
                              '$item',
                              fit: BoxFit.cover,
                            ),
                          );
                        }).toList(),
                      ),
                      CarouselSlider(
                        options: CarouselOptions(
                            scrollPhysics: NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            enlargeCenterPage: false,
                            autoPlay: true,
                            aspectRatio: 1.35,
                            viewportFraction: 1.25,
                            autoPlayCurve: Curves.easeInBack,
                            enableInfiniteScroll: true,
                            autoPlayInterval: Duration(seconds: 6),
                            autoPlayAnimationDuration:
                            Duration(milliseconds: 900),
                            enlargeStrategy: CenterPageEnlargeStrategy.height),
                        items: cardItems
                            .map(
                              (cardItem) => Container(
                              height: 50,
                              width: 500,
                              margin: EdgeInsets.only(
                                  top: 150, bottom: 80, left: 20),
                              child: Stack(
                                clipBehavior: Clip.antiAlias,
                                children: [
                                  SvgPicture.asset(
                                    'assets/image/card_home_origem.svg',
                                    fit: BoxFit.cover,
                                    color: Colors.black.withAlpha(99),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 90,
                                        width: 90,
                                        child:
                                        Image.asset(cardItem.listLogo),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 30, left: 1),
                                        child: Text(
                                          cardItem.listTitle,
                                          style: TextStyle(
                                            fontSize: 30,
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
                                  Container(
                                    height: 550,
                                    width: 400,
                                    margin:
                                    EdgeInsets.only(top: 150, left: 50),
                                    padding: EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withAlpha(50),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30)),
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                          Colors.black.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        cardItem.listContent,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25),
                                      ),
                                    ),
                                  )
                                ],
                              )),
                        )
                            .toList(),
                      )
                    ],
                  ))
            ),
          ],
        ),
      ],
    );
  }
}

class CardItem {
  final String listLogo;
  final String listTitle;
  final String listContent;
  final Color color;

  const CardItem(
      {required this.listLogo,
      required this.listTitle,
      required this.listContent,
      required this.color});
}

const List<CardItem> cardItems = const <CardItem>[
  const CardItem(
    listLogo: 'assets/image/logo_patas.png',
    listTitle: 'Patas',
    color: Colors.deepOrange,
    listContent:
        'Uma Rede social exclusiva para animais de estimação, nela seu pet pode adicionar outros pets, publicar e compartilhar conteúdo, curtir fotos e vídeos de amigos pets. Tudo isso funcionará através dos seus pais (tutores). Além de rede social, o Patas também disponibilizará, ferramentas incríveis para seu pet!',
  ),
  const CardItem(
    listLogo: 'assets/image/ssinaliza.png',
    listTitle: 'Sinaliza Compras',
    color: Colors.purple,
    listContent:
        'Simples, prático... unindo empresas e clientes! Obtenha visibilidade no comércio da sua região, e venda ainda mais!!!',
  ),
  const CardItem(
    listLogo: 'assets/image/comedy_stream.png',
    listTitle: 'Comedy Stream',
    color: Colors.amberAccent,
    listContent:
        'Toda a magia do Stand Up Comedy, agora está centralizada em uma única plataforma! Nada de ficar garimpando as melhores piadas em redes sociais ou apps de streaming de vídeos avulsos!!!',
  ),
  const CardItem(
    listLogo: 'assets/image/orcamento_mestre.png',
    listTitle: 'Orçamento Mestre',
    color: Colors.blue,
    listContent:
    'Crie, edite e envie seus orçamentos para seus clientes. Nosso arquivo de orçamento, é totalmente customizável, possibilitando que o usuário altere cores do layout, além de possibilitar a edição de cada item da lista do orçamento.',
  ),
];
