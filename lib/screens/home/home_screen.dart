import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/home_body.dart';
import 'package:plant_app/components/bottom_nav_bar.dart';
import 'package:plant_app/constants.dart' as Constants;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: HomeBody(),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}
