import 'package:flutter/material.dart';

import 'package:plant_app/constants.dart' as Constants;
import 'header_with_search.dart';
import 'package:plant_app/components/title_with_more_button.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearch(size: size),
          TitleWithMoreButton(
            title: 'Recommended',
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
