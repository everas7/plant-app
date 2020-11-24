import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:plant_app/constants.dart' as Constants;
import 'package:plant_app/components/icon_card.dart';
import 'package:plant_app/screens/details/components/image_icons_card.dart';
import 'package:plant_app/screens/details/components/title_price.dart';

class DetailsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageIconsCard(size: size),
          TitleAndPrice(
            title: "Angelica",
            country: "Japan",
            price: 430,
          ),
          SizedBox(height: Constants.DEFAULT_PADDING),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                    color: Constants.PRIMARY_COLOR,
                    onPressed: () {},
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    )),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
