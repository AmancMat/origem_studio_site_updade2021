import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:origem_studio_site_updade2021/app/core/base/presentation/base_widget.dart';
import 'package:origem_studio_site_updade2021/app/core/side_bar/infra/page_model.dart';
import 'package:origem_studio_site_updade2021/app/modules/contatos/responsive_page_contact.dart';
import 'package:origem_studio_site_updade2021/app/modules/home/responsive_page_home.dart';
import 'package:origem_studio_site_updade2021/app/modules/portfolio/comedy/responsive_portfolio_page_comedy.dart';
import 'package:origem_studio_site_updade2021/app/modules/portfolio/orcamento/responsive_portfolio_page_orcamento.dart';
import 'package:origem_studio_site_updade2021/app/modules/portfolio/patas/responsive_portfolio_page_patas.dart';
import 'package:origem_studio_site_updade2021/app/modules/portfolio/portfolio_base.dart';
import 'package:origem_studio_site_updade2021/app/modules/portfolio/sinaliza/responsive_portfolio_page_sinaliza.dart';
import 'package:origem_studio_site_updade2021/app/modules/shop/shop_page.dart';

class AppRouter {
  
  List<PageModel> listPages = [
    PageModel(
        title: 'HOME',
        hasSub: false,
        page: ResponsivePageHome()),
    PageModel(
        title: 'PORTFÓLIO',
        hasSub: false,
        page: PortfolioBase()),
    PageModel(
        title: 'CONTATOS',
        hasSub: false,
        page: ResponsivePageContatc()),
    PageModel(
        title: 'STORE',
        hasSub: false,
        page: ShopPage()),
  ];

  Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
    '/': (BuildContext context) => BaseWidget(),
    '/portfolioPage': (BuildContext context) => ResponsivePortfolioPagePatas(),
    '/contatosPage': (BuildContext context) => ResponsivePageContatc(),
    '/shopPage': (BuildContext context) => ShopPage(),
  };

  List<PageModel> listPagesBar = [
    PageModel(
        image: 'assets/image/patas_b.png',
        hasSub: false,
        page: ResponsivePortfolioPagePatas()),
    PageModel(
        image: 'assets/image/sinaliza_b.png',
        page: ResponsivePortfolioPageSinaliza()),
    PageModel(
        image: 'assets/image/comedy_b.png',
        page: ResponsivePortfolioPageComedy()),
    PageModel(
        image: 'assets/image/orcamento_b.png',
        page: ResponsivePortfolioPageOrcamento()),
  ];

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
