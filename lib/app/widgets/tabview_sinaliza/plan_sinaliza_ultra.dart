import 'package:flutter/material.dart';
import 'package:origem_studio_site_updade2021/app/widgets/tabview_sinaliza/sinaliza_pack_dialog.dart';

class PlanSinalizaUltra extends StatefulWidget {
  @override
  _PlanSinalizaUltraState createState() => _PlanSinalizaUltraState();
}

class _PlanSinalizaUltraState extends State<PlanSinalizaUltra> {
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
                            flex: 50,
                            child: Container(
                              color: Colors.purple,
                              height: 10,
                            ),
                          ),Expanded(
                            flex: 50,
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
                      child: Text('50 anúncios',
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
                      width: 360,
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
                      child: Text('1 banner',
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
                      width: 360,
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
                      height: 210,
                      width: 500,
                      margin: EdgeInsets.only(
                          top: 15
                      ),
                      child: Text('A diversidade da apresentação dos seus produtos ou serviços, tem o potencial de ampliar as vendas. O usuário ganha maior poder de escolha, gerando praticidade e satisfação. Toda esta situação garante uma maior probabilidade para a finalização da compra. Neste plano, sua empresa estará apta a operar 50 anúncios e um banner renovado semanalmente. Entre em contato com a Origem Studio para contratar este plano.',
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
                        onPressed: (){
                          showDialog(
                            context: context,
                            builder: (context) => SinalizaPackDialog(),
                          );
                        },
                        child: Text('R\$ 99,90 mensal',
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
              ),
            ),
            Expanded(
              flex: 1,
              child: Image.asset('assets/image/plan03.png'),
            )
          ],
        )
    );
  }
}
