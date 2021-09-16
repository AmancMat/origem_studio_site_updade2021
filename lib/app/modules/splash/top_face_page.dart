import 'package:flutter/material.dart';
import 'package:origem_studio_site_updade2021/app/theme/theme.dart';
import 'package:vector_math/vector_math.dart' as vector;

class TopFacePage extends StatefulWidget {
  @override
  _TopFacePageState createState() => _TopFacePageState();
}

class _TopFacePageState extends State<TopFacePage> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: dark,
      body: ListView(
        children: [
          Container(
            child: Align(
                alignment: Alignment.topRight,
                child: Image.asset('assets/images/face_up_bigger.png',
                  height: 600,
                  fit: BoxFit.cover,
                )),
          ),
          ///Container marcação rolagem
          Container(
            color: dark,
            height: h *2,
            width: w *1,
          )
        ],
      ),
    );
  }
}
