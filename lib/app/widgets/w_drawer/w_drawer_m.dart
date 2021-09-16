import 'package:flutter/material.dart';
import 'package:origem_studio_site_updade2021/app/core/side_bar/infra/page_model.dart';
import 'package:origem_studio_site_updade2021/app/theme/theme.dart';
import 'package:origem_studio_site_updade2021/app/widgets/w_origem.dart';
import 'package:origem_studio_site_updade2021/ui/item_drawer/button_drawer.dart';

class WDrawerM extends StatelessWidget {
  const WDrawerM({Key? key, required this.pages}) : super(key: key);

  final List<PageModel> pages;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 100,
        ),
        child: Align(
          alignment: Alignment.topLeft,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 550,
                  width: 355,
                  color: blackGray,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            width: .2,
                            color: minimumGray,
                            margin: EdgeInsets.only(
                                top: 10,
                                left: 100
                            ),
                          ),
                          Container(
                            height: 250,
                            width: 200,
                            child: ListView.builder(
                                itemCount: pages.length,
                                itemBuilder: (_, i) => Padding(
                                  padding: EdgeInsets.only(
                                      top: 10
                                  ),
                                  child: ButtomDrawer(
                                    page: pages[i], index: i,
                                  ),
                                )),
                          ),
                          Container(
                            height: 30,
                            width: .2,
                            color: minimumGray,
                            margin: EdgeInsets.only(
                                top: 10,
                                left: 100
                            ),
                          ),
                        ],
                      ),
                      Container(
                          height: 60,
                          width: 60,
                          margin: EdgeInsets.only(
                            top: 390,
                          ),
                          child: Image.asset('assets/image/d01.jpg')
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
