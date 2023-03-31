import 'package:flutter/material.dart';
import 'package:wisatabandung/detailscreen/detail_icon_web.dart';
import 'package:wisatabandung/detailscreen/detail_image_item.dart';
import 'package:wisatabandung/detailscreen/favorite_button.dart';
import '../model/tourism_place.dart';

class DetailWebPage extends StatefulWidget {
  final TourismPlace place;

  const DetailWebPage({super.key, required this.place});

  @override
  State<DetailWebPage> createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: SizedBox(
            width: 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Wisata Bandung",
                  style: TextStyle(
                    fontFamily: "Staatliches",
                    fontSize: 32,
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(widget.place.imageAsset),
                          ),
                          const SizedBox(height: 32),
                          Container(
                            height: 150,
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Scrollbar(
                              controller: _scrollController,
                              child: Container(
                                height: 150,
                                padding: const EdgeInsets.only(bottom: 16),
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: widget.place.imageUrls
                                      .map((url) => DetailImageItem(imageUrl: url))
                                      .toList(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 32),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                child: Text(
                                  widget.place.name,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 30.0,
                                      fontFamily: "Staatliches"
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  DetailIconWeb(icon: Icons.calendar_today, text: widget.place.openDays),
                                  const FavoriteButton()
                                ],
                              ),
                              DetailIconWeb(icon: Icons.access_time, text: widget.place.openTime),
                              DetailIconWeb(icon: Icons.monetization_on, text: widget.place.ticketPrice),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  widget.place.description,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: "Oxygen"
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
