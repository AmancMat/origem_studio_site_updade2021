import 'package:flutter/material.dart';
import 'package:origem_studio_site_updade2021/app/theme/theme.dart';
import 'package:origem_studio_site_updade2021/app/widgets/tabview_sinaliza/plan_sinaliza_basic.dart';
import 'package:origem_studio_site_updade2021/app/widgets/tabview_sinaliza/plan_sinaliza_middle.dart';
import 'package:origem_studio_site_updade2021/app/widgets/tabview_sinaliza/plan_sinaliza_ultra.dart';
import 'package:origem_studio_site_updade2021/app/widgets/tabview_sinaliza/plan_sinaliza_unlimited.dart';

class TabViewSinaliza extends StatefulWidget {
  const TabViewSinaliza({Key? key}) : super(key: key);

  @override
  _TabViewSinalizaState createState() => _TabViewSinalizaState();
}

class _TabViewSinalizaState extends State<TabViewSinaliza>
    with SingleTickerProviderStateMixin {

  TabController? tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController?.dispose();
    super.dispose();
  }

Widget getTabBar() {
    return TabBar(
        labelColor: Colors.purple,
        unselectedLabelColor: Colors.white,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)),
            color: Colors.white),
        controller: tabController,
        tabs: [
          Tab(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Sinaliza Basic",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Tab(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Sinaliza Middle",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Tab(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Sinaliza Ultra",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Tab(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Sinaliza Unlimited",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ]);
}

  Widget getTabBarPages() {
    return TabBarView(controller: tabController, children: <Widget>[
      PlanSinlizaBasic(),
      PlanSinalizaMiddle(),
      PlanSinalizaUltra(),
      PlanSinalizaUnlimited()
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 700,
        width: 1800,
        padding: EdgeInsets.only(bottom: 1, left: 20, right: 20),
        child: DefaultTabController(
            length: 4,
            child: Container(
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(26),
              ),
              child: Scaffold(
                appBar: AppBar(
                  elevation: 0,
                  backgroundColor: softGray,
                  automaticallyImplyLeading: false,
                  flexibleSpace: getTabBar(),
                ),
                body: getTabBarPages(),
              ),
            )));
  }
}
