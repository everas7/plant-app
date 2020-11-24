import 'package:flutter/material.dart';
import 'package:plant_app/models/plant.dart';
import 'package:plant_app/screens/details/components/details_body.dart';

class DetailsScreen extends StatelessWidget {
  final Plant plant;

  const DetailsScreen({Key key, this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsBody(plant: plant),
    );
  }
}
