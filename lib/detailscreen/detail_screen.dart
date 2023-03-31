import 'package:flutter/material.dart';
import 'package:wisatabandung/detailscreen/detail_mobile_page.dart';
import 'package:wisatabandung/detailscreen/detail_web_page.dart';
import 'package:wisatabandung/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  final TourismPlace place;

  const DetailScreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 800) {
          return DetailMobilePage(place: place);
        } else {
          return DetailWebPage(place: place);
        }
      },
    );
  }
}
