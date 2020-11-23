import 'package:flutter/material.dart';

import 'package:plant_app/components/recommended_plant_card.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedPlantCard(
            image: "assets/images/image_1.png",
            title: "Almond",
            country: "Japan",
            price: 360,
            onTap: () {},
          ),
          RecommendedPlantCard(
            image: "assets/images/image_2.png",
            title: "Alyssium",
            country: "Japan",
            price: 330,
            onTap: () {},
          ),
          RecommendedPlantCard(
            image: "assets/images/image_3.png",
            title: "Ambassador",
            country: "Japan",
            price: 380,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
