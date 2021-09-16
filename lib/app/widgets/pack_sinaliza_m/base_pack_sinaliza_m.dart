import 'package:flutter/material.dart';
import 'package:origem_studio_site_updade2021/app/widgets/pack_sinaliza_m/plan_sinaliza_basic_mobile.dart';
import 'package:origem_studio_site_updade2021/app/widgets/pack_sinaliza_m/plan_sinaliza_middle_mobile.dart';
import 'package:origem_studio_site_updade2021/app/widgets/pack_sinaliza_m/plan_sinaliza_ultra_mobile.dart';
import 'package:origem_studio_site_updade2021/app/widgets/pack_sinaliza_m/plan_sinaliza_unlimited_mobile.dart';

class BasePackSinalizaM extends StatelessWidget {
  const BasePackSinalizaM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 20),
          width: double.infinity,
          child: Text(
            'Conheça os planos para anuncio do Sinaliza Compras',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              shadows: <Shadow>[
                Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 3.0,
                    color: Colors.black),
              ],
              fontSize: 18,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: ClampingScrollPhysics(),
          child: Container(
            height: 680,
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 250,
                      child: Text(
                        "Sinaliza Basic",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                    PlanSinlizaBasicMobile(),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 250,
                      child: Text(
                        "Sinaliza Middle",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                    PlanSinalizaMiddleMobile(),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 250,
                      child: Text(
                        "Sinaliza Ultra",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                    PlanSinalizaUltraMobile(),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 250,
                      child: Text(
                        "Sinaliza Unlimited",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                    PlanSinalizaUnlimitedMobile(),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
