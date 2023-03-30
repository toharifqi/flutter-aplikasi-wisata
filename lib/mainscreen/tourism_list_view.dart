import 'package:flutter/material.dart';
import 'package:wisatabandung/detailscreen/detail_screen.dart';
import 'package:wisatabandung/model/tourism_place.dart';

class TourismList extends StatelessWidget {
  final List<TourismPlace> placeList;

  const TourismList({super.key, required this.placeList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: placeList.length,
      itemBuilder: (context, index) {
        final place = placeList[index];
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailScreen(place: place))
            );
          },
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Image.asset(place.imageAsset),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          place.name,
                          style: const TextStyle(fontSize: 16.0),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(place.location)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

}
