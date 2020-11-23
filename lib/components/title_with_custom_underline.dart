import 'package:flutter/material.dart';

import 'package:plant_app/constants.dart' as Constants;

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 24,
        child: Stack(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(left: Constants.DEFAULT_PADDING / 4),
              child: Text(
                text,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.only(right: Constants.DEFAULT_PADDING / 4),
                height: 7,
                color: Constants.PRIMARY_COLOR.withOpacity(0.2),
              ),
            )
          ],
        ));
  }
}
