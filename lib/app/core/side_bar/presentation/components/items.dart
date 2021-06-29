import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:origem_studio_site_updade2021/app/core/base/viewModel/cubit/base_cubit.dart';
import 'package:origem_studio_site_updade2021/app_router.dart';
import 'package:origem_studio_site_updade2021/ui/theme/presenter/theme.dart';

import 'item.dart';

Widget items(BuildContext context) {
  // ignore: close_sinks
  final bloc = context.read<BaseCubit>();
  final state = context.watch<BaseCubit>().state;
  AppRouter router = AppRouter();
  return Wrap(
    children: [
      Builder(builder: (_) {
        return ListView.builder(
            shrinkWrap: true,
            itemCount: router.listPages.length,
            itemBuilder: (_, i) {
              Color iconColor = (state == i) ? secundary : secundary;
              Color lineColor = (state == i) ? secundary : primary;
              Color letraColor = (state == i) ? secundary : secundary;
              Color backgroundColor =
                  (state == i) ? Colors.transparent : Colors.transparent;
              return GestureDetector(
                onTap: () {
                  bloc.changeIndex(i);
                },
                child: item(router.listPages[i].title,
                    iconColor, lineColor, letraColor, backgroundColor, context),
              );
            });
      }),
    ],
  );
}
