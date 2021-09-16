import 'package:flutter/material.dart';
import 'package:origem_studio_site_updade2021/app/widgets/tabview_sinaliza/sinaliza_pack_dialog.dart';

class PlanSinlizaBasic extends StatefulWidget {
  @override
  _PlanSinlizaBasicState createState() => _PlanSinlizaBasicState();
}

class _PlanSinlizaBasicState extends State<PlanSinlizaBasic> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            width: 300,
            margin: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.all(
                  Radius.circular(10)),
            ),
            child: Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.all(03),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                    Radius.circular(8)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 360,
                    margin: EdgeInsets.only(
                      top: 30,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Container(
                            color: Colors.purple,
                            height: 10,
                          ),
                        ),Expanded(
                          flex: 95,
                          child: Container(
                            color: Colors.purple[100],
                            height: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 360,
                    margin: EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text('5 anúncios grátis no mês inicial',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    width: 360,
                    margin: EdgeInsets.only(
                      top: 20,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          flex: 0,
                          child: Container(
                            color: Colors.blue[700],
                            height: 10,
                          ),
                        ),Expanded(
                          flex: 100,
                          child: Container(
                            color: Colors.blue[100],
                            height: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 360,
                    margin: EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text('Anúncios fixados no mês inicial',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    width: 360,
                    margin: EdgeInsets.only(
                      top: 25,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.purple,
                            height: 10,
                          ),
                        ),Expanded(
                          flex: 99,
                          child: Container(
                            color: Colors.purple[100],
                            height: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 360,
                    margin: EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text('1 banner grátis no mês inicial',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    width: 360,
                    margin: EdgeInsets.only(
                      top: 20,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          flex: 0,
                          child: Container(
                            color: Colors.blue[700],
                            height: 10,
                          ),
                        ),Expanded(
                          flex: 100,
                          child: Container(
                            color: Colors.blue[100],
                            height: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 360,
                    margin: EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text('Banner fixo no mês inicial',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    height: 210,
                    width: 500,
                    margin: EdgeInsets.only(
                        top: 15
                    ),
                    child: Text('Conheça as vantagens em anunciar no Sinaliza Compras por um mês totalmente grátis! Você tem direito a cinco anúncios e um banner, no período de teste, que dura um mês. Seus anúncios e o banner, serão mantidos fixos nesta experiência mensal. Ao finalizar, entre em contato com a Origem Studio, e contrate o plano perfeito para sua empresa.',
                      style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 360,
                    margin: EdgeInsets.only(
                        top: 35
                    ),
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.all(
                          Radius.circular(18)),
                    ),
                    child: FlatButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => SinalizaPackDialog(),
                        );
                      }
                      ,
                      child: Text('Grátis por um mês!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
              child: Image.asset('assets/image/plan01.png')),
        ],
      )
    );
  }
}
