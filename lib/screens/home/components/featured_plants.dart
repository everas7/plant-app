import 'package:flutter/material.dart';

import 'package:plant_app/components/featured_plant_card.dart';
import 'package:plant_app/data/plants_mock.dart';
import 'package:plant_app/screens/details/details_screen.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: featurePlantsMock
            .map(
              (plant) => FeaturedPlantCard(
                image: plant.image,
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
