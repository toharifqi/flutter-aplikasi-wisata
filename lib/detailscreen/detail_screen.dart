import 'package:flutter/material.dart';
import 'package:wisatabandung/detailscreen/detail_icon.dart';
import 'package:wisatabandung/detailscreen/detail_image_item.dart';
import 'package:wisatabandung/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  final TourismPlace place;

  const DetailScreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Image.asset(place.imageAsset),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 30.0,
                    fontFamily: "Staatliches"
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DetailIcon(
                      icon: Icons.calendar_today,
                      text: place.openDays
                  ),
                  DetailIcon(
                      icon: Icons.access_time,
                      text: place.openTime
                  ),
                  DetailIcon(
                      icon: Icons.monetization_on,
                      text: place.ticketPrice
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                place.description,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16.0),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DetailImageItem(imageUrl: place.imageUrls[0]),
                  DetailImageItem(imageUrl: place.imageUrls[1]),
                  DetailImageItem(imageUrl: place.imageUrls[2]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
