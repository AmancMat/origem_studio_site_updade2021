import 'dart:ui';
import 'package:flutter/material.dart';

class CardItem {
  final String listLogo;
  final String listTitle;
  final String listContent;
  final Color color;

  const CardItem(
      {required this.listLogo,
        required this.listTitle,
        required this.listContent,
        required this.color});
}

const List<CardItem> cardItems = const <CardItem>[
  const CardItem(
    listLogo: 'assets/image/logo_patas.png',
    listTitle: 'Patas',
    color: Colors.deepOrange,
    listContent:
    'Uma Rede social exclusiva para animais de estimação, nela seu pet pode adicionar outros pets, publicar e compartilhar conteúdo, curtir fotos e vídeos de amigos pets. Tudo isso funcionará através dos seus pais (tutores). Além de rede social, o Patas também disponibilizará, ferramentas incríveis para seu pet!',
  ),
  const CardItem(
    listLogo: 'assets/image/ssinaliza.png',
    listTitle: 'Sinaliza Compras',
    color: Colors.purple,
    listContent:
    'Simples, prático... unindo empresas e clientes! Obtenha visibilidade no comércio da sua região, e venda ainda mais!!!',
  ),
  const CardItem(
    listLogo: 'assets/image/comedy_stream.png',
    listTitle: 'Comedy Stream',
    color: Colors.amberAccent,
    listContent:
    'Toda a magia do Stand Up Comedy, agora está centralizada em uma única plataforma! Nada de ficar garimpando as melhores piadas em redes sociais ou apps de streaming de vídeos avulsos!!!',
  ),
  const CardItem(
    listLogo: 'assets/image/orcamento_mestre.png',
    listTitle: 'Orçamento Mestre',
    color: Colors.blue,
    listContent:
    'Crie, edite e envie seus orçamentos para seus clientes. Nosso arquivo de orçamento, é totalmente customizável, possibilitando que o usuário altere cores do layout, além de possibilitar a edição de cada item da lista do orçamento.',
  ),
];
