import 'package:flutter/material.dart';
import 'package:origem_studio_site_updade2021/app/theme/theme.dart';
import 'package:origem_studio_site_updade2021/app/widgets/w_contatos/w_contatos_m.dart';

class ContactPageM extends StatelessWidget {
  const ContactPageM({Key? key}) : super(key: key);

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
              height: 1450,
              width: w,
              margin: EdgeInsets.only(
                  bottom: 50
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 80,
                    width: w,
                    margin: EdgeInsets.only(
                        top: 130,
                        bottom: 30
                    ),
                    child: Text('Sobre a Origem Studio',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: minimumGray
                      ),
                    ),
                  ),
                  Container(
                    height: 700,
                    padding: EdgeInsets.only(
                        left: 25,
                        right: 25
                    ),
                    child: Column(
                      children: [
                        Text('A Origem Studio estreia suas atividades em 2011. Inicialmente atuando na área de computação gráfica, desenvolvendo projetos para para arquitetura e publicidade, e utilizando tecnologia sempre atualizada na criação de imagens e vídeos em 3d e projetos interativos. Em 2015, a Origem Studio passa também a desenvolver aplicações mobile, atuando nos segmentos comercial, pets, rede social e planejamento orçamentário.',
                          style: TextStyle(
                            color: minimumGray,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 60,
                          width: w,
                        ),
                        Text('Com o ideal de desenvolver conteúdo de ótima qualidade aos nossos clientes e parceiros. A Origem Studio trabalha com dedicação e seriedade em todas as etapas ao desenvolver conteúdo. Buscando satisfazer todas as necessidades de nossos clientes, através de softwares e equipamentos de ultima geração. Uma empresa que busca excelência em cada detalhe e que está sempre a frente do seu tempo. Somos assim, uma empresa nova, que proporciona o que há de melhor para você, nosso cliente!',
                          style: TextStyle(
                            color: minimumGray,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: w,
                    margin: EdgeInsets.only(
                        bottom: 40
                    ),
                    child: Text('Nossa Equipe',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: minimumGray
                      ),
                    ),
                  ),
                  Container(
                    height: 350,
                    width: w,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 150,
                              width: 150,
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
                                  radius: 80,
                                  backgroundImage: AssetImage('assets/image/l.jpeg'),
                                ),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 150,
                              child: Text('Lucas Batista',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: minimumGray,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Container(
                              height: 15,
                              width: 150,
                              child: Text('Cofundador da Origem Studio',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 10,
                                    color: minimumGray,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                            Container(
                              height: 15,
                              width: 150,
                              child: Text('Programador Back-end',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 10,
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
                              height: 150,
                              width: 150,
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
                                  radius: 80,
                                  backgroundImage: AssetImage('assets/image/m.jpeg',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 150,
                              child: Text('Mateus Amâncio',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: minimumGray,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Container(
                              height: 15,
                              width: 150,
                              child: Text('Cofundador da Origem Studio',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 10,
                                    color: minimumGray,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                            Container(
                              height: 15,
                              width: 150,
                              child: Text('Programador Front-end',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 10,
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
              child: WContatosM(),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 15),
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
