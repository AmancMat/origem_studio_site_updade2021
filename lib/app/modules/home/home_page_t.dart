import 'package:flutter/material.dart';
import '../../theme/theme.dart';

class HomePageT extends StatefulWidget {
  const HomePageT({Key? key}) : super(key: key);

  @override
  _HomePageTState createState() => _HomePageTState();
}

class _HomePageTState extends State<HomePageT> {
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
