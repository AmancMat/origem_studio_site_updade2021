import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:origem_studio_site_updade2021/app/core/base/presentation/base_widget.dart';
import 'package:origem_studio_site_updade2021/app/modules/contatos/responsive_page_contact.dart';
import 'package:origem_studio_site_updade2021/app/modules/portfolio/patas/responsive_portfolio_page_patas.dart';
import 'package:origem_studio_site_updade2021/app/modules/shop/shop_page.dart';

enum MyRoutes { home, portfolio, contatos, store }

class OrigemRouteInfomationParse extends RouteInformationParser<MyRoutes> {
  @override
  Future<MyRoutes> parseRouteInformation(
      RouteInformation routeInformation) async {
    switch (routeInformation.location) {
      case "/":
        return MyRoutes.home;
      case "/portfolio":
        return MyRoutes.portfolio;
      case "/contatos":
        return MyRoutes.contatos;
      case "/shop":
        return MyRoutes.store;
      default:
        return MyRoutes.home;
    }
  }

  @override
  RouteInformation restoreRouteInformation(MyRoutes configuration) {
    switch (configuration) {
      case MyRoutes.home:
        return const RouteInformation(location: "/");
      case MyRoutes.portfolio:
        return const RouteInformation(location: "/portfolio");
      case MyRoutes.contatos:
        return const RouteInformation(location: "/contatos");
      case MyRoutes.store:
        return const RouteInformation(location: "/shop");
    }
  }
}

class OrigemRouterDelegate extends RouterDelegate<MyRoutes>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<MyRoutes> {

  @override
  final GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();

  MyRoutes get configuration => _configuration;
  late MyRoutes _configuration;
  set configuration(MyRoutes value) {
    if (_configuration == value) return;
    _configuration = value;
    notifyListeners();
  }

  @override
  Future<void> setNewRoutePath(MyRoutes configuration) async {
    _configuration = configuration;
  }

  @override
  MyRoutes get currentConfiguration => configuration;

  bool _handlePopPage(Route<dynamic> route, dynamic result) {
    final bool success = route.didPop(result);
    if (success) {
      _configuration = MyRoutes.home;
      notifyListeners();
    }
    return success;
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: <Page<void>> [
        MaterialPage(key: ValueKey("home"), child: BaseWidget()),
        if (configuration == MyRoutes.portfolio)
          MaterialPage(key: ValueKey("portfolio"), child: ResponsivePortfolioPagePatas()),
        if (configuration == MyRoutes.contatos)
          MaterialPage(key: ValueKey("contatos"), child: ResponsivePageContatc()),
        if (configuration == MyRoutes.store)
          MaterialPage(key: ValueKey("store"), child: ShopPage()),
      ],
      onPopPage: _handlePopPage,
    );
  }
}
