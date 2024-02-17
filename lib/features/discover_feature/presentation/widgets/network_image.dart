import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AppNetworkImage extends StatelessWidget {
  final String? url;
  final String errorAsset;
  final double? width, height;
  final BoxFit? fit;
  const AppNetworkImage({
    super.key,
    required this.url,
    required this.errorAsset,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: width,
      height: height,
      imageUrl: url ?? '',
      fit: fit,
      errorListener: (e) {
        if (e is SocketException) {
          debugPrint('Error with ${e.address} and message ${e.message}');
        } else {
          debugPrint('Image Exception is: ${e.runtimeType}');
        }
      },
      errorWidget: (context, url, error) {
        return Image.asset(errorAsset);
      },
    );
  }
}
