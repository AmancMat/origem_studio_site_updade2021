import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:origem_studio_site_updade2021/app/theme/theme.dart';

class WContatosD extends StatelessWidget {
  WContatosD({Key? key}) : super(key: key);

  final tController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.transparent,
      height: h,
      width: w,
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 400,
            margin: EdgeInsets.only(top: 388, left: 388),
            decoration: BoxDecoration(
              color: orange,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
          ),
          Container(
            color: darkgray,
            height: 200,
            width: 400,
            margin: EdgeInsets.only(top: 850, left: 388),
          ),
          Container(
            height: 500,
            width: 1100,
            margin: EdgeInsets.only(top: 400, left: 400),
            decoration: BoxDecoration(
              color: softgray,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 12,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
          ),
          Container(
            height: 385,
            width: 985,
            margin: EdgeInsets.only(top: 500, left: 500),
            decoration: BoxDecoration(
              color: green,
              boxShadow: [],
            ),
          ),
          Container(
            height: 480,
            width: 1080,
            color: softgray,
            margin: EdgeInsets.only(top: 400, left: 400),
            child: Container(
              margin: EdgeInsets.only(top: 80, left: 60),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 450,
                        margin: EdgeInsets.only(bottom: 3),
                        child: Text(
                          'Envie nos um email',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: minimumgray),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 450,
                        child: TextField(
                          cursorColor: green,
                          autofocus: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            fillColor: lightgray,
                            filled: true,
                            contentPadding: new EdgeInsets.symmetric(
                                vertical: 40.0, horizontal: 10.0),
                            hintText:
                                'Esteja a vontade para nos enviar uma mensagem!',
                            hintStyle:
                                TextStyle(color: Colors.white, fontSize: 12),
                            helperMaxLines: 5,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 40),
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(orange),
                            ),
                            onPressed: () {},
                            child: Text('Enviar')),
                      ),
                      Container(
                        width: 450,
                        margin: EdgeInsets.only(bottom: 3),
                        child: Text(
                          'Trabalhe Conosco',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: minimumgray),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 450,
                        child: TextField(
                          cursorColor: green,
                          autofocus: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            fillColor: lightgray,
                            filled: true,
                            contentPadding: new EdgeInsets.symmetric(
                                vertical: 40.0, horizontal: 10.0),
                            hintText:
                                'Envie nos um email contato suas habilidades!',
                            hintStyle:
                                TextStyle(color: Colors.white, fontSize: 12),
                            helperMaxLines: 5,
                          ),
                        ),
                      ),
                      Container(
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(orange),
                            ),
                            onPressed: () {},
                            child: Text('Enviar')),
                      ),
                    ],
                  ),
                  Container(
                    height: 450,
                    width: 05,
                    color: green,
                    margin: EdgeInsets.only(bottom: 65, left: 75, right: 75),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 30,
                        ),
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.phone_android_outlined,
                                color: nanogray,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                '11 98170-0462 - 46 9925-4078',
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 16, color: nanogray),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 40,
                        ),
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                FontAwesomeIcons.whatsapp,
                                color: nanogray,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                '11 98170-0462 - 46 9925-4078',
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 16, color: nanogray),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 40,
                        ),
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                FontAwesomeIcons.facebook,
                                color: nanogray,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                'facebook.com/origem.studio',
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 16, color: nanogray),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 40,
                        ),
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                FontAwesomeIcons.instagram,
                                color: nanogray,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                'instagram.com/origem.studio/',
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 16, color: nanogray),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 40,
                        ),
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.mail_outline_rounded,
                                color: nanogray,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                'suporte@origemstudio.com',
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 16, color: nanogray),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 20,
                width: 90,
                margin: EdgeInsets.only(top: 150, left: 1510),
                child: Text(
                  'Qr Code Agenda',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                height: 150,
                width: 150,
                margin: EdgeInsets.only(left: 1450),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: green,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 12,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Center(child: Image.asset('assets/image/qrcode.png')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
