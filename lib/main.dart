import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/home_screen.dart';
import 'constants.dart' as Constants;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        scaffoldBackgroundColor: Constants.BACKGROUND_COLOR,
        primaryColor: Constants.PRIMARY_COLOR,
        textTheme:
            Theme.of(context).textTheme.apply(bodyColor: Constants.TEXT_COLOR),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
