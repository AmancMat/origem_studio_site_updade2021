import 'package:flutter/material.dart';
import 'package:origem_studio_site_updade2021/app/modules/contatos/contact_page_d.dart';
import 'package:origem_studio_site_updade2021/app/modules/contatos/contact_page_m.dart';
import 'package:origem_studio_site_updade2021/app/modules/contatos/contact_page_t.dart';
import 'package:origem_studio_site_updade2021/app/responsivity/responsive_helper.dart';

class ResponsivePageContatc extends StatefulWidget {
  const ResponsivePageContatc({Key? key}) : super(key: key);

  @override
  _ResponsivePageContatcState createState() => _ResponsivePageContatcState();
}

class _ResponsivePageContatcState extends State<ResponsivePageContatc> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveHelper(
        desktop: ContactPageD(),
        tablet: ContactPageT(),
        mobile: ContactPageM());
  }
}
