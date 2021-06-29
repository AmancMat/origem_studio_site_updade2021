import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:origem_studio_site_updade2021/app/core/search/cubit/search_cubit.dart';
import 'package:origem_studio_site_updade2021/ui/components/forms_ui.dart';

Widget searchBar(BuildContext context) {
  var theme = Theme.of(context);
  // ignore: close_sinks
  final cubit = context.read<SearchCubit>();
  return Builder(
    builder: (context) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 48, top: 8),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 800),
            child: forms(
                action: TextInputAction.search,
                icon: Icon(Icons.search, size: 24, color: theme.primaryColor),
                field: 'Pesquise pelo nome',
                onChanged: cubit.changeSearch),
          ),
        ),
      );
    },
  );
}
