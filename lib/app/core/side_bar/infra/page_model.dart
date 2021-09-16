import 'package:flutter/material.dart';

class PageModel {
  // ignore: non_constant_identifier_names
  final Widget page;
  final String? title;
  final String? image;
  final bool? hasSub;

  PageModel({this.title, this.image, required this.page, this.hasSub});
}
