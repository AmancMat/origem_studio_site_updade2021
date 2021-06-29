import 'package:flutter/material.dart';

class PageModel {
  // ignore: non_constant_identifier_names
  final Widget page;
  final String title;
  final bool? hasSub;

  PageModel({required this.title, required this.page, this.hasSub});
}
