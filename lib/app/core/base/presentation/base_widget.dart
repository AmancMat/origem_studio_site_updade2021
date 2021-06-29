import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:origem_studio_site_updade2021/app/core/base/viewModel/cubit/base_cubit.dart';
import 'package:origem_studio_site_updade2021/app/responsivity/responsive_helper.dart';
import 'package:origem_studio_site_updade2021/app/widgets/w_side_bar.dart';

import '../../../../app_router.dart';

class BaseWidget extends StatefulWidget {
  @override
  _BaseWidgetState createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget> {
  AppRouter router = AppRouter();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<BaseCubit>().state;
    return Scaffold(body: Builder(
      builder: (context) {
        return Stack(
          children: [
            router.listPages.map((e) => e.page).elementAt(state),
            ResponsiveHelper(
              mobile: WSideBar(),
              tablet: WSideBar(),
              desktop: WSideBar(),
            )
          ],
        );
      },
    ));
  }
}
