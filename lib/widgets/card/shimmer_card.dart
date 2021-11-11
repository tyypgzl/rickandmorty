import 'package:flutter/material.dart';
import 'package:rickandmorty/core/extension/context_extension.dart';
import 'package:rickandmorty/widgets/shimmer/shimmer_effect.dart';

class ShimmerCard extends StatelessWidget {
  const ShimmerCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.imageHeight,
      margin: context.paddingLow,
      padding: context.paddingMedium,
      child: Expanded(
        child: Row(
          children: [
            shimmerImageArea(context),
            Expanded(child: shimmerTextsArea(context)),
          ],
        ),
      ),
    );
  }

  ShimmerWidget shimmerImageArea(BuildContext context) {
    return ShimmerWidget.circular(
      height: context.shimmerHeight,
      width: context.shimmerWidth,
      shapeBorder: RoundedRectangleBorder(borderRadius: context.borderRadiusAllHigh),
    );
  }

  Column shimmerTextsArea(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        shimmerTitle(context),
        shimmerSubTitle(context),
        shimmerSecondSubTitle(context),
      ],
    );
  }

  ShimmerWidget shimmerSecondSubTitle(BuildContext context) => ShimmerWidget.rectangular(height: 14, width: context.width * .25);

  ShimmerWidget shimmerSubTitle(BuildContext context) => ShimmerWidget.rectangular(height: 14, width: context.width * .25);

  ShimmerWidget shimmerTitle(BuildContext context) => ShimmerWidget.rectangular(height: 24, width: context.width * .35);
}
