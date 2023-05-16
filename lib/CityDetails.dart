
import 'package:flutter/material.dart';

import 'City.dart';

class CityDetails extends StatelessWidget{
  const CityDetails({super.key, required this.city});

  final City city;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(city.cityName),
          leading: const BackButton(),
        ),
        body: Column(
          children: [
            Image.asset("assets/${city.locationImage}"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: Text(city.cityDescription,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black
                ),
              ),
            )
          ],
        )
    );
  }
}