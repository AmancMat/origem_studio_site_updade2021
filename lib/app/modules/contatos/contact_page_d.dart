import 'package:flutter/material.dart';
import 'package:origem_studio_site_updade2021/app/theme/theme.dart';
import 'package:origem_studio_site_updade2021/app/widgets/w_contatos/w_contatos_d.dart';
import 'package:universal_html/html.dart';

class ContactPageD extends StatelessWidget {
  const ContactPageD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      height: h,
      width: w,
      color: darkGray,
      child: ListView(
        children: [
          Container(
            height: 1900,
            width: w,
            margin: EdgeInsets.only(
              bottom: 150
            ),
            decoration: BoxDecoration(
              color: blackGray,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 12,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  height: 80,
                  width: w,
                  margin: EdgeInsets.only(
                      top: 130,
                      bottom: 110
                  ),
                  child: Text('Sobre a Origem Studio',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: minimumGray
                    ),
                  ),
                ),
                Container(
                  height: 500,
                  padding: EdgeInsets.only(
                    left: 150,
                    right: 90
                  ),
                  child: Column(
                    children: [
                      Text('A Origem Studio estreia suas atividades em 2011. Inicialmente atuando na área de computação gráfica, desenvolvendo projetos para para arquitetura e publicidade, e utilizando tecnologia sempre atualizada na criação de imagens e vídeos em 3d e projetos interativos. Em 2015, a Origem Studio passa também a desenvolver aplicações mobile, atuando nos segmentos comercial, pets, rede social e planejamento orçamentário.',
                        style: TextStyle(
                          color: minimumGray,
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: 60,
                        width: w,
                      ),
                      Text('Com o ideal de desenvolver conteúdo de ótima qualidade aos nossos clientes e parceiros. A Origem Studio trabalha com dedicação e seriedade em todas as etapas ao desenvolver conteúdo. Buscando satisfazer todas as necessidades de nossos clientes, através de softwares e equipamentos de ultima geração. Uma empresa que busca excelência em cada detalhe e que está sempre a frente do seu tempo. Somos assim, uma empresa nova, que proporciona o que há de melhor para você, nosso cliente!',
                        style: TextStyle(
                          color: minimumGray,
                          fontSize: 26,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: w,
                  margin: EdgeInsets.only(
                    top: 90,
                    bottom: 110
                  ),
                  child: Text('Nossa Equipe',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: minimumGray
                    ),
                  ),
                ),
                Container(
                  height: 600,
                  width: w,
                  margin: EdgeInsets.only(
                    left: 350,
                    right: 350
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 300,
                            width: 300,
                            margin: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black, spreadRadius: 5)],
                            ),
                            child: CircleAvatar(
                              radius: 46,
                              backgroundColor: minimumGray,
                              child: CircleAvatar(
                                radius: 148,
                                backgroundImage: AssetImage('assets/image/l.jpeg'),
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 300,
                            child: Text('Lucas Batista',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30,
                                  color: minimumGray,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Container(
                            height: 25,
                            width: 300,
                            child: Text('Cofundador da Origem Studio',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: minimumGray,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          Container(
                            height: 25,
                            width: 300,
                            child: Text('Programador Back-end',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: minimumGray,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 300,
                            width: 300,
                            margin: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black, spreadRadius: 5)],
                            ),
                            child: CircleAvatar(
                              radius: 46,
                              backgroundColor: minimumGray,
                              child: CircleAvatar(
                                radius: 148,
                                backgroundImage: AssetImage('assets/image/m.jpeg',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 300,
                            child: Text('Mateus Amâncio',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: minimumGray,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Container(
                            height: 25,
                            width: 300,
                            child: Text('Cofundador da Origem Studio',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: minimumGray,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          Container(
                            height: 25,
                            width: 300,
                            child: Text('Programador Front-end',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: minimumGray,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: WContatosD(),
          ),
          Container(
            margin: EdgeInsets.only(top: 50,bottom: 15),
            child: Text(
              'Origem Studio | 2021',
              textAlign: TextAlign.center,
              style:
              TextStyle(color: Colors.white, fontFamily: 'neuropol'),
            ),
          ),
        ],
      )
    );
  }
}
