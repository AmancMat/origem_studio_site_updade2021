import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:origem_studio_site_updade2021/app/core/base/presentation/base_widget.dart';
import 'package:origem_studio_site_updade2021/app/core/side_bar/infra/page_model.dart';
import 'package:origem_studio_site_updade2021/app/modules/contatos/contatos_page.dart';
import 'package:origem_studio_site_updade2021/app/modules/home/responsive_page.dart';
import 'package:origem_studio_site_updade2021/app/modules/portfolio/portfolio_page.dart';
import 'package:origem_studio_site_updade2021/app/modules/shop/shop_page.dart';

class AppRouter {
  
  List<PageModel> listPages = [
    PageModel(
        title: 'HOME',
        hasSub: false,
        page: ResponsivePage()),
    PageModel(
        title: 'PORTFÓLIO',
        hasSub: false,
        page: PortfolioPage()),
    PageModel(
        title: 'CONTATOS',
        hasSub: false,
        page: ContatosPage()),
    PageModel(
        title: 'SHOP',
        hasSub: false,
        page: ShopPage()),
  ];

  Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
    '/': (BuildContext context) => BaseWidget(),
    '/portfolioPage': (BuildContext context) => PortfolioPage(),
    '/contatosPage': (BuildContext context) => ContatosPage(),
    '/shopPage': (BuildContext context) => ShopPage(),
  };

  GlobalKey<NavigatorState>? navigationKey;

  static AppRouter instance = AppRouter();

  AppRouter() {
    navigationKey = GlobalKey<NavigatorState>();
  }

  Future<dynamic> off(String _rn) {
    return navigationKey!.currentState!.pushReplacementNamed(_rn);
  }

  Future<dynamic> to(String _rn) {
    return navigationKey!.currentState!.pushNamed(_rn);
  }

  Future<dynamic> navigateToRoute(MaterialPageRoute _rn) {
    return navigationKey!.currentState!.push(_rn);
  }

  pop() {
    return navigationKey!.currentState!.pop();
  }
}
