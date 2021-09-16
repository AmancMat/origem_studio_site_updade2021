import 'package:flutter/material.dart';
import 'package:origem_studio_site_updade2021/app/widgets/tabview_sinaliza/sinaliza_pack_dialog.dart';

class PlanSinalizaMiddleMobile extends StatefulWidget {
  @override
  _PlanSinalizaMiddleMobileState createState() => _PlanSinalizaMiddleMobileState();
}

class _PlanSinalizaMiddleMobileState extends State<PlanSinalizaMiddleMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 580,
      margin: EdgeInsets.only(
        top: 5,
        left: 35,
        right: 35
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
            Radius.circular(23)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 250,
            margin: EdgeInsets.only(
                top: 32,
                left: 16,
                right: 16
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 20,
                  child: Container(
                    color: Colors.purple,
                    height: 10,
                  ),
                ),
                Expanded(
                  flex: 80,
                  child: Container(
                    color: Colors.purple[100],
                    height: 10,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 250,
            margin: EdgeInsets.only(
              top: 5,
            ),
            child: Text('20 anúncios',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            width: 250,
            margin: EdgeInsets.only(
              top: 20,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 25,
                  child: Container(
                    color: Colors.blue[700],
                    height: 10,
                  ),
                ),Expanded(
                  flex: 75,
                  child: Container(
                    color: Colors.blue[100],
                    height: 10,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 250,
            margin: EdgeInsets.only(
              top: 5,
            ),
            child: Text('Anúncios novos toda semana',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.blue[700],
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            width: 250,
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
            width: 250,
            margin: EdgeInsets.only(
              top: 5,
            ),
            child: Text('1 banner',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            width: 250,
            margin: EdgeInsets.only(
              top: 20,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 25,
                  child: Container(
                    color: Colors.blue[700],
                    height: 10,
                  ),
                ),Expanded(
                  flex: 75,
                  child: Container(
                    color: Colors.blue[100],
                    height: 10,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 250,
            margin: EdgeInsets.only(
              top: 5,
            ),
            child: Text('Banner novo toda semana',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.blue[700],
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            height: 260,
            width: 250,
            margin: EdgeInsets.only(
                top: 20
            ),
            child: Text('Um excelente plano para empresas de médio porte. São 20 anúncios e um banner, que podem ser renovados a cada semana, com rotatividade mensal. Levando seus produtos ou serviços à alcançarem novos clientes. Entre em contato com a Origem Studio para contratar este plano.',
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.all(
                  Radius.circular(15)),
            ),
            child: FlatButton(
              onPressed: (){
                showDialog(
                  context: context,
                  builder: (context) => SinalizaPackDialog(),
                );
              },
              child: Text('R\$ 59,90 mensal',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
