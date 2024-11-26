import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff7c94b6),
        image: const DecorationImage(
          image: NetworkImage(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
          fit: BoxFit.cover,
        ),
        border: Border.all(
          width: 8,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image.network( // Added Image widget
        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
        width: 200, // Set desired width
        height: 200, // Set desired height
        fit: BoxFit.cover, // Adjust how the image fills the container
      ),
    );
  }
}