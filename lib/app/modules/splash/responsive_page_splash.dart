import 'package:fluent_ui/fluent_ui.dart';
import 'package:origem_studio_site_updade2021/app/modules/splash/splash_page.dart';
import 'package:origem_studio_site_updade2021/app/responsivity/responsive_helper.dart';

class ResponsivePageSplash extends StatefulWidget {
  const ResponsivePageSplash({Key? key}) : super(key: key);

  @override
  _ResponsivePageSplashState createState() => _ResponsivePageSplashState();
}

class _ResponsivePageSplashState extends State<ResponsivePageSplash> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveHelper(
      desktop: SplashPage(),
      tablet: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.purple,
      ),
      mobile: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.blue,
      ),
    );
  }
}
