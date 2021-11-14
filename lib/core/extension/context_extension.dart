import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension ValueExtension on BuildContext {
  double get lowValue => 4;
  double get mediumValue => 8;
  double get highValue => 16;
}

extension MediaQueryExtension on BuildContext {
  double get width => mediaQuery.size.width;
  double get height => mediaQuery.size.height;
  double get imageHeight => mediaQuery.size.height * .18;
  double get imageWidth => mediaQuery.size.width * .35;
  double get shimmerWidth => mediaQuery.size.width * .30;
  double get shimmerHeight => mediaQuery.size.width * .30;
}

extension PaddingExtensionAll on BuildContext {
  EdgeInsets get paddingLow => EdgeInsets.all(lowValue);
  EdgeInsets get paddingMedium => EdgeInsets.all(mediumValue);
  EdgeInsets get paddingHigh => EdgeInsets.all(highValue);
}

extension MarginExtensionAll on BuildContext {
  EdgeInsets get marginLow => EdgeInsets.all(lowValue);
  EdgeInsets get marginMedium => EdgeInsets.all(mediumValue);
  EdgeInsets get marginHigh => EdgeInsets.all(highValue);
}

extension RadiusExtension on BuildContext {
  Radius get radiusCircularLow => Radius.circular(lowValue);
  Radius get radiusCircularMedium => Radius.circular(mediumValue);
  Radius get radiusCircularHigh => Radius.circular(highValue);
}

extension BorderRadiusExtension on BuildContext {
  BorderRadius get borderRadiusAllLow => BorderRadius.all(radiusCircularLow);
  BorderRadius get borderRadiusAllMedium => BorderRadius.all(radiusCircularMedium);
  BorderRadius get borderRadiusAllHigh => BorderRadius.all(radiusCircularHigh);
}
