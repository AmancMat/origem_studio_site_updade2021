import 'package:flutter/material.dart';
import 'package:origem_studio_site_updade2021/app/theme/theme.dart';

class WOrigem extends StatelessWidget {
  const WOrigem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(
              left: 50
          ),
          child: Text('O',
            style: TextStyle(
                color: green,
                fontSize: 20,
                fontFamily: 'neuropol'
            ),
          ),
        ),
        Container(
          child: Text('rigem',
            style: TextStyle(
                color: orange,
                fontSize: 20,
                fontFamily: 'neuropol'
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              left: 5
          ),
          child: Text('S',
            style: TextStyle(
                color: green,
                fontSize: 20,
                fontFamily: 'neuropol'
            ),
          ),
        ),
        Container(
          child: Text('tudio',
            style: TextStyle(
                color: orange,
                fontSize: 20,
                fontFamily: 'neuropol'
            ),
          ),
        ),
      ],
    );
  }
}
