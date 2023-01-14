import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    Key? key,
    required this.thumb,
  }) : super(key: key);

  final String thumb;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      clipBehavior: Clip.hardEdge,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(12), boxShadow: [
        BoxShadow(
          blurRadius: 4,
          offset: const Offset(2, 2),
          color: Colors.black.withOpacity(0.2),
        )
      ]),
      child: Image.network(thumb),
    );
  }
}
