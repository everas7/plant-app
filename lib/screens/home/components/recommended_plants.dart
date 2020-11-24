import 'package:flutter/material.dart';

import 'package:plant_app/components/recommended_plant_card.dart';
import 'package:plant_app/data/plants_mock.dart';
import 'package:plant_app/screens/details/details_screen.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: recommendedPlantsMock
            .map(
              (plant) => RecommendedPlantCard(
                image: plant.image,
                title: plant.title,
                country: plant.country,
                price: plant.price,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(plant: plant),
                    ),
                  );
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
