import 'package:flutter/material.dart';

import 'package:plant_app/constants.dart' as Constants;

class RecommendedPlantCard extends StatelessWidget {
  const RecommendedPlantCard({
    Key key,
    @required this.image,
    @required this.title,
    @required this.country,
    @required this.price,
    this.onTap,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: Constants.DEFAULT_PADDING,
        top: Constants.DEFAULT_PADDING / 2,
        bottom: Constants.DEFAULT_PADDING * 2.5,
      ),
      width: size.width * 0.4,
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: <Widget>[
            Image.asset(image),
            Container(
                padding: EdgeInsets.all(Constants.DEFAULT_PADDING / 2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Constants.PRIMARY_COLOR.withOpacity(0.23),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(
                            color: Constants.PRIMARY_COLOR.withOpacity(0.5),
                          ),
                        )
                      ]),
                    ),
                    Spacer(),
                    Text(
                      "\$$price",
                      style: Theme.of(context).textTheme.button.copyWith(
                            color: Constants.PRIMARY_COLOR,
                          ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
