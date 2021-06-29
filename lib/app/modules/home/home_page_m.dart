import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class HomePageM extends StatefulWidget {
  const HomePageM({Key? key}) : super(key: key);

  @override
  _HomePageMState createState() => _HomePageMState();
}

class _HomePageMState extends State<HomePageM> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      height: h,
      width: w,
      color: blackgray,
    );
  }
}
