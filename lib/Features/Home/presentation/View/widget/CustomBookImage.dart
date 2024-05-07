import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: AspectRatio(
          aspectRatio: 2.1 / 3.3,
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            placeholder: (context, url) {
              return const CircularProgressIndicator(
                value: 5,
              );
            },
            errorWidget: (context, url, error) {
              return const Icon(Icons.error);
            },
          )),
    );
  }
}
