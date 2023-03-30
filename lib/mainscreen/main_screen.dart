import 'package:flutter/material.dart';
import 'package:wisatabandung/mainscreen/tourism_grid_view.dart';
import 'package:wisatabandung/mainscreen/tourism_list_view.dart';
import 'package:wisatabandung/model/tourism_place.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final placeList = tourismPlaceList;
    return Scaffold(
      appBar: AppBar(
        title: Text("Wisata Bandung"),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return TourismList(placeList: placeList);
          } else if (constraints.maxWidth <= 1200) {
            return TourismGrid(placeList: placeList, gridCount: 4);
          } else {
            return TourismGrid(placeList: placeList, gridCount: 6);
          }
        },
      ),
    );
  }

}
