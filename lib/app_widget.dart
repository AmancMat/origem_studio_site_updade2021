import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:origem_studio_site_updade2021/ui/theme/presenter/theme.dart';
import 'package:origem_studio_site_updade2021/ui/theme/viewModel/cubit/theme_cubit.dart';

import 'app_router.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final AppRouter router = AppRouter();
  @override
  Widget build(BuildContext context) {
    final isDark = context.watch<ThemeCubit>().state;
    return ScreenUtilInit(
        designSize: Size(411.4, 820.6),
        builder: () {
          return Builder(
            builder: (context) {
              return MaterialApp(
                title: 'Core',
                theme: isDark ? buildDarkTheme() : buildLightTheme(),
                debugShowCheckedModeBanner: false,
                navigatorKey: AppRouter.instance.navigationKey,
                initialRoute: "/",
                routes: router.routes,
              );
            },
          );
        });
  }
}
