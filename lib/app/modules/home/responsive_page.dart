import 'package:flutter/material.dart';
import '../../responsivity/responsive_helper.dart';
import 'home_page_d.dart';
import 'home_page_m.dart';
import 'home_page_t.dart';

class ResponsivePage extends StatefulWidget {
  const ResponsivePage({Key? key}) : super(key: key);

  @override
  _ResponsivePageState createState() => _ResponsivePageState();
}

class _ResponsivePageState extends State<ResponsivePage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveHelper(
      desktop: HomePageD(),
      tablet: HomePageT(),
      mobile: HomePageM(),
    );
  }
}
