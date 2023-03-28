
import 'package:flutter/cupertino.dart';

class DetailImageItem extends StatelessWidget {
  final String imageUrl;

  const DetailImageItem({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(imageUrl),
      ),
    );
  }

}
