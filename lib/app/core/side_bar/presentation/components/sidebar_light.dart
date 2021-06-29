import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:origem_studio_site_updade2021/app/core/side_bar/presentation/components/items.dart';
import 'package:origem_studio_site_updade2021/app/core/side_bar/viewModel/bloc/sidebar_bloc.dart';
import 'package:origem_studio_site_updade2021/ui/theme/presenter/theme.dart';
import 'button_close.dart';
import 'button_open.dart';

Widget sideBarLight(BuildContext context) {
  final state = context.watch<SidebarBloc>().state;
  return Builder(builder: (context) {
    return Container(
      width: 60,
      color: primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 14.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                          height: ScreenUtil().setHeight(30),
                          child:
                              Container()), //Image.asset('assets/logoinst.png')),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(20),
              ),
              Container(
                height: 1,
                width: 50,
                color: secundary,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(20),
              ),
              items(context),
            ],
          ),
          state.isWeb ? buttomOpen(context) : buttomClose(context)
        ],
      ),
    );
  });
}
