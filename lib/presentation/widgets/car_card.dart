import 'package:flutter/material.dart';
import 'package:rental_car_app/data/models/car.dart';

class CarCard extends StatelessWidget {
  final Car car;
  const CarCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Image.asset(
            "assets/car_image.png",
            height: 120,
          ),
          Text(
            car.model,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset("assets/gps.png"),
                  Text('${car.distance.toStringAsFixed(0)}km')
                ],
              ),
              Row(
                children: [
                  Image.asset("assets/pump.png"),
                  Text('${car.fuelCapacity.toStringAsFixed(0)}ltr')
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}