import 'package:flutter/material.dart';

import 'package:plant_app/constants.dart' as Constants;
import 'package:plant_app/components/title_with_custom_underline.dart';

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key key,
    this.title,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: Constants.DEFAULT_PADDING),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(text: title),
          Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Constants.PRIMARY_COLOR,
            onPressed: onPressed,
            child: Text("More", style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}
