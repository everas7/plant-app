import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart' as Constants;

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          height: size.height * 0.2,
          child: Stack(children: <Widget>[
            Container(
              height: size.height * 0.2 - 27,
              decoration: BoxDecoration(
                color: Constants.PRIMARY_COLOR,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                margin:
                    EdgeInsets.symmetric(horizontal: Constants.DEFAULT_PADDING),
                padding:
                    EdgeInsets.symmetric(horizontal: Constants.DEFAULT_PADDING),
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Constants.PRIMARY_COLOR.withOpacity(0.23),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Constants.PRIMARY_COLOR.withOpacity(0.5),
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
