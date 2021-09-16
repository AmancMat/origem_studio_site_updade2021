import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:origem_studio_site_updade2021/app/theme/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class WContatosD extends StatelessWidget {
  WContatosD({Key? key}) : super(key: key);

  final tController = TextEditingController();

  _openWhatsappF() async {
    final whatsappUrl ="whatsapp://send?phone= +5511981700462";
    await canLaunch(whatsappUrl)? launch(whatsappUrl):print("open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
    await launch(whatsappUrl);
  }

  _openWhatsappB() async {
    final whatsappUrl ="whatsapp://send?phone= +554699254078";
    await canLaunch(whatsappUrl)? launch(whatsappUrl):print("open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
    await launch(whatsappUrl);
  }

  _openFbMessenger() async {
    final messengerUrl ="https://www.facebook.com/origem.studio";
    await canLaunch(messengerUrl)? launch(messengerUrl):print("open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
    await launch(messengerUrl);
  }

  _openInstagram() async {
    final messengerUrl ="https://www.instagram.com/origem.studio/";
    await canLaunch(messengerUrl)? launch(messengerUrl):print("open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
    await launch(messengerUrl);
  }

  _openLinkedim() async {
    final messengerUrl ="https://www.instagram.com/origem.studio/";
    await canLaunch(messengerUrl)? launch(messengerUrl):print("open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
    await launch(messengerUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 200,
          width: 400,
          margin: EdgeInsets.only(top: 25),
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
          height: 500,
          width: 1100,
          margin: EdgeInsets.only(top: 40, left: 15),
          decoration: BoxDecoration(
            color: softGray,
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
          margin: EdgeInsets.only(top: 140, left: 115),
          decoration: BoxDecoration(
            color: green,
            boxShadow: [],
          ),
        ),
        Container(
          height: 480,
          width: 1080,
          color: softGray,
          margin: EdgeInsets.only(top: 40, left: 15),
          child: Container(
            margin: EdgeInsets.only(top: 80, left: 60),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: (){
                                _openWhatsappF();
                              },
                              child: Container(
                                  height: 120,
                                  width: 120,
                                  child: Center(
                                    child: FaIcon(FontAwesomeIcons.whatsapp,
                                      color: Colors.green,
                                      size: 90,
                                    ),
                                  )),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  primary: Colors.transparent
                              ),
                            ),
                            Container(
                                width: 90,
                                child: Text('Whatsapp Front-end',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14
                                  ),
                                ))
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: (){
                                _openWhatsappB();
                              },
                              child: Container(
                                  height: 120,
                                  width: 120,
                                  child: Center(
                                    child: FaIcon(FontAwesomeIcons.whatsapp,
                                      color: Colors.green,
                                      size: 90,
                                    ),
                                  )),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  primary: Colors.transparent
                              ),
                            ),
                            Container(
                                width: 90,
                                child: Text('Whatsapp Back-end',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14
                                  ),
                                ))
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: (){
                                _openFbMessenger();
                              },
                              child: Container(
                                  height: 120,
                                  width: 120,
                                  child: Center(
                                    child: FaIcon(FontAwesomeIcons.facebookMessenger,
                                      color: Colors.blue[700],
                                      size: 90,
                                    ),
                                  )),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  primary: Colors.transparent
                              ),
                            ),
                            Container(
                                width: 90,
                                child: Text('Facebook Messenger',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14
                                  ),
                                ))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 65,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: (){
                                _openInstagram();
                              },
                              child: Container(
                                  height: 120,
                                  width: 120,
                                  child: Center(
                                    child: FaIcon(FontAwesomeIcons.instagram,
                                      color: Colors.redAccent,
                                      size: 90,
                                    ),
                                  )),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  primary: Colors.transparent
                              ),
                            ),
                            Container(
                                width: 90,
                                child: Text('Instagram Direct',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14
                                  ),
                                ))
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: (){},
                              child: Container(
                                  height: 120,
                                  width: 120,
                                  child: Center(
                                    child: FaIcon(FontAwesomeIcons.linkedinIn,
                                      color: Colors.blue[900],
                                      size: 90,
                                    ),
                                  )),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  primary: Colors.transparent
                              ),
                            ),
                            Container(
                                width: 90,
                                child: Text('Linkedin',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14
                                  ),
                                ))
                          ],
                        ),
                      ],
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
                              color: nanoGray,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              '11 98170-0462 - 46 9925-4078',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 16, color: nanoGray),
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
                              color: nanoGray,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              '11 98170-0462 - 46 9925-4078',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 16, color: nanoGray),
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
                              color: nanoGray,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              'facebook.com/origem.studio',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 16, color: nanoGray),
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
                              color: nanoGray,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              'instagram.com/origem.studio/',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 16, color: nanoGray),
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
                              color: nanoGray,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              'suporte@origemstudio.com',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 16, color: nanoGray),
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
        Positioned(
          top: 90,
          left: 1130,
          child: Container(
            height: 20,
            width: 90,
            child: Text(
              'Qr Code Agenda',
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          top: 110,
          left: 1070,
          child: Container(
            height: 210,
            width: 210,
            decoration: BoxDecoration(
              color: minimumGray,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 12,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Image.asset('assets/image/qrcode.png',
              height: 120,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
