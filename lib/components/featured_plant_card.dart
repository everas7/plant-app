import 'package:flutter/material.dart';

import 'package:plant_app/constants.dart' as Constants;

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    Key key,
    @required this.image,
    this.onTap,
  }) : super(key: key);

  final String image;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
          left: Constants.DEFAULT_PADDING,
          top: Constants.DEFAULT_PADDING / 2,
          bottom: Constants.DEFAULT_PADDING / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
