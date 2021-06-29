import 'package:flutter/material.dart';

class ResponsiveHelper extends StatefulWidget {

  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ResponsiveHelper({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop}) : super(key: key);

  @override
  State<ResponsiveHelper> createState() => _ResponsiveHelperState();
}

class _ResponsiveHelperState extends State<ResponsiveHelper> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains){
      if(constrains.maxWidth < 900) {
        return widget.mobile;
      } if(constrains.maxWidth < 1420) {
        return widget.tablet;
      } else {
        return widget.desktop;
      }
    });
  }
}
