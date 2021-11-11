import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  final double height;
  final double width;
  final ShapeBorder shapeBorder;

  // ignore: use_key_in_widget_constructors
  const ShimmerWidget.rectangular({
    this.width = double.infinity,
    required this.height,
    this.shapeBorder = const RoundedRectangleBorder(),
  });

  // ignore: use_key_in_widget_constructors
  const ShimmerWidget.circular({
    required this.height,
    required this.width,
    this.shapeBorder = const CircleBorder(),
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[500]!,
      highlightColor: Colors.grey[300]!,
      child: Container(
        decoration: ShapeDecoration(
          shape: shapeBorder,
          color: Colors.grey,
        ),
        width: width,
        height: height,
      ),
    );
  }
}
