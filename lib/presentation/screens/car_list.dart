import 'package:flutter/material.dart';
import 'package:rental_car_app/data/models/car.dart';
import 'package:rental_car_app/presentation/widgets/car_card.dart';

class CarList extends StatelessWidget {
  CarList({super.key});

  final List<Car> cars = [
    Car(model: "Ractis", distance: 120, fuelCapacity: 42, pricePerHour: 23),
    Car(model: "Allion A18", distance: 150, fuelCapacity: 60, pricePerHour: 88),
    Car(model: "Probox", distance: 25, fuelCapacity: 18, pricePerHour: 24),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: cars.length,
          itemBuilder: (context, index) {
            return CarCard(car: cars[index]);
          }),
    );
  }
}
