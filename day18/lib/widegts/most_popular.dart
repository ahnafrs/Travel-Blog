import 'package:day18/model/travel.dart';
import 'package:flutter/material.dart';

class MostPopularPlaces extends StatefulWidget {
  const MostPopularPlaces({super.key});

  @override
  State<MostPopularPlaces> createState() => _MostPopularPlacesState();
}

class _MostPopularPlacesState extends State<MostPopularPlaces> {
  final mostPopular = Travel.mostPopularPlace();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            var places = mostPopular[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      "${places.img}",
                      height: double.infinity,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      left: 5,
                      bottom: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${places.name}",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "${places.address}",
                              style: TextStyle(
                                  fontSize: 5,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            );
          },
          separatorBuilder: (_, index) => SizedBox(
                width: 10,
              ),
          itemCount: mostPopular.length),
    );
  }
}
