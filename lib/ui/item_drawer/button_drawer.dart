import 'package:flutter/material.dart';
import 'package:origem_studio_site_updade2021/app/core/base/viewModel/cubit/base_cubit.dart';
import 'package:origem_studio_site_updade2021/app/core/side_bar/infra/page_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:origem_studio_site_updade2021/app/theme/theme.dart';
import 'package:origem_studio_site_updade2021/app_router.dart';

class ButtomDrawer extends StatelessWidget {
  const ButtomDrawer({Key? key, required this.page, required this.index}) : super(key: key);

  final PageModel page;
  final int index;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<BaseCubit>();
    return Row(
      children: [
        Container(
          width: 150,
          margin: EdgeInsets.only(
              left: 50
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
                onPressed: () {
                  cubit.changeIndex(index);
                  AppRouter.instance.pop();
                },
                child: Padding(
                  padding:  EdgeInsets.only(
                      left: 30
                  ),
                  child: Text(page.title,
                    style: TextStyle(
                        color: nanogray
                    ),
                  ),
                )),
          ),
        ),
        if(page.hasSub!)
          Container(
            child: Icon(Icons.add),
          )
      ],
    );
  }
}
