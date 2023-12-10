import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PosterImage extends StatelessWidget {
  final String image;
  const PosterImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: CachedNetworkImage(
        imageUrl: 'https://image.tmdb.org/t/p/w500$image',
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
