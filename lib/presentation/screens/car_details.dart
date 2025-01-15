import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rental_car_app/data/models/car.dart';
import 'package:rental_car_app/presentation/screens/map_details.dart';
import 'package:rental_car_app/presentation/widgets/car_card.dart';
import 'package:rental_car_app/presentation/widgets/more_card.dart';

class CarDetails extends StatefulWidget {
  final Car car;
  const CarDetails({super.key, required this.car});

  @override
  State<CarDetails> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails>  with SingleTickerProviderStateMixin{
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    // TODO: implement initState
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _animation = Tween<double>(begin: 1.0, end: 1.5).animate(_controller!)..addListener((){
      setState(() {

      });
    });
    _controller!.forward();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose


    super.dispose();
  }

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
                    model: "-1${widget.car.model}",
                    distance: widget.car.distance + 100,
                    fuelCapacity: widget.car.fuelCapacity + 200,
                    pricePerHour: widget.car.pricePerHour + 300)),
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
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MapDetails(car: widget.car)));
                      },
                      child: Container(
                        height: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 10,
                                  spreadRadius: 5)
                            ]),
                        child: ClipRRect(
                          borderRadius : BorderRadius.circular(20),
                          child: Transform.scale(
                            scale: _animation!.value,
                            alignment: Alignment.center,
                            child: Image.asset("assets/maps.png", fit: BoxFit.cover,),

                          ),

                        ),
                      ),
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
                        model: "-2${widget.car.model}",
                        distance: widget.car.distance + 100,
                        fuelCapacity: widget.car.fuelCapacity + 200,
                        pricePerHour: widget.car.pricePerHour + 300),
                  ),
                  Gap(15),
                  MoreCard(
                    car: Car(
                        model: "-3${widget.car.model}",
                        distance: widget.car.distance + 100,
                        fuelCapacity: widget.car.fuelCapacity + 200,
                        pricePerHour: widget.car.pricePerHour + 300),
                  ),
                  Gap(15),
                  MoreCard(
                    car: Car(
                        model: "-4${widget.car.model}",
                        distance: widget.car.distance,
                        fuelCapacity: widget.car.fuelCapacity,
                        pricePerHour: widget.car.pricePerHour),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
