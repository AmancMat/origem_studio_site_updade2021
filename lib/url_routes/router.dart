import 'package:fluent_ui/fluent_ui.dart';
import 'package:origem_studio_site_updade2021/app/modules/contatos/responsive_page_contact.dart';
import 'package:origem_studio_site_updade2021/app/modules/home/responsive_page_home.dart';
import 'package:origem_studio_site_updade2021/app/modules/portfolio/portfolio_base.dart';
import 'package:origem_studio_site_updade2021/app/modules/shop/shop_page.dart';
import 'package:origem_studio_site_updade2021/url_routes/route_names.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(ResponsivePageHome(), settings);
    case PortfolioRoute:
      return _getPageRoute(PortfolioBase(), settings);
    case ContactRoute:
      return _getPageRoute(ResponsivePageContatc(), settings);
    case StoreRoute:
      return _getPageRoute(ShopPage(), settings);
    default:
      return _getPageRoute(ResponsivePageHome(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String? routeName;

  _FadeRoute({required this.child, required this.routeName})
      : super(
    settings: RouteSettings(name: routeName),
    pageBuilder: (BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,) =>
    child,
    transitionsBuilder: (BuildContext contex,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,) =>
        FadeTransition(
          opacity: animation,
          child: child,
        ),
  );
}