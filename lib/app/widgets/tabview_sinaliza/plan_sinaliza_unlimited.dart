import 'package:flutter/material.dart';
import 'package:origem_studio_site_updade2021/app/widgets/tabview_sinaliza/sinaliza_pack_dialog.dart';

class PlanSinalizaUnlimited extends StatefulWidget {
  @override
  _PlanSinalizaUnlimitedState createState() => _PlanSinalizaUnlimitedState();
}

class _PlanSinalizaUnlimitedState extends State<PlanSinalizaUnlimited> {
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
                            flex: 100,
                            child: Container(
                              color: Colors.purple,
                              height: 10,
                            ),
                          ),Expanded(
                            flex: 0,
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
                      child: Text('Contrate seu plano personalizado',
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
                            flex: 100,
                            child: Container(
                              color: Colors.blue[700],
                              height: 10,
                            ),
                          ),Expanded(
                            flex: 0,
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
                      child: Text('Novo anúncio a qualquer momento',
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
                            flex: 100,
                            child: Container(
                              color: Colors.purple,
                              height: 10,
                            ),
                          ),Expanded(
                            flex: 0,
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
                      child: Text('Contrate seu plano personalizado',
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
                            flex: 100,
                            child: Container(
                              color: Colors.blue[700],
                              height: 10,
                            ),
                          ),Expanded(
                            flex: 0,
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
                      child: Text('Novo banner a qualquer momento',
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
                      child: Text('Escolha a quantidade ideal de anúncios e banners para sua empresa, e tenha a liberdade para altera-los sempre que precisar. Este plano, é somente negociado com demanda acima do plano "Sinaliza Ultra", e o valor é negociado diretamente com nosso vendedores. Consulte e saiba mais!',
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
                        child: Text('Valores sob consulta',
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
              child: Image.asset('assets/image/plan04.png'),
            )
          ],
        )
    );
  }
}
