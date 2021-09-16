import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:origem_studio_site_updade2021/app/core/base/viewModel/cubit/base_cubit_bar.dart';
import 'package:origem_studio_site_updade2021/ui/theme/viewModel/cubit/theme_cubit.dart';
import 'app/core/base/viewModel/cubit/base_cubit.dart';
import 'app/core/search/cubit/search_cubit.dart';
import 'app/core/side_bar/viewModel/bloc/sidebar_bloc.dart';
import 'app_widget.dart';

class AppProviders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<ThemeCubit>(create: (BuildContext context) => ThemeCubit()),
      BlocProvider<BaseCubit>(create: (BuildContext context) => BaseCubit()),
      BlocProvider<BaseCubitBar>(create: (BuildContext context) => BaseCubitBar()),
      BlocProvider<SidebarBloc>(
          create: (BuildContext context) => SidebarBloc()),
      BlocProvider<SearchCubit>(
          create: (BuildContext context) => SearchCubit()),
    ], child: AppWidget());
  }
}
