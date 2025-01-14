import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rental_car_app/data/models/car.dart';
import 'package:rental_car_app/presentation/widgets/car_card.dart';
import 'package:rental_car_app/presentation/widgets/more_card.dart';

class CarDetails extends StatelessWidget {
  const CarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.info_outline), Gap(5), Text("Information")],
          ),
        ),
        body: Column(
          children: [
            CarCard(
                car: Car(
                    model: "Ractis",
                    distance: 120,
                    fuelCapacity: 42,
                    pricePerHour: 23)),
            Gap(20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Color(0xffF3F3F3),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10,
                                spreadRadius: 5)
                          ]),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("assets/user.png"),
                          ),
                          Gap(10),
                          Text(
                            "Elie Yaffa",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '\$4.23',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(20),
                  Expanded(
                    child: Container(
                      height: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage("assets/maps.png"),
                              fit: BoxFit.cover),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10,
                                spreadRadius: 5)
                          ]),
                    ),
                  ),
                ],
              ),
            ),
            Gap(20),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  MoreCard(
                    car: Car(
                        model: "Probox",
                        distance: 25,
                        fuelCapacity: 18,
                        pricePerHour: 24),
                  ),
                  Gap(15),
                  MoreCard(
                    car: Car(
                        model: "Probox",
                        distance: 25,
                        fuelCapacity: 18,
                        pricePerHour: 24),
                  ),
                  Gap(15),
                  MoreCard(
                    car: Car(
                        model: "Probox",
                        distance: 25,
                        fuelCapacity: 18,
                        pricePerHour: 24),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
