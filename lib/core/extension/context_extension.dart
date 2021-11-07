import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension MediaQueryExtension on BuildContext {
  double get width => mediaQuery.size.width;
  double get height => mediaQuery.size.height;
  double get lowHeight => mediaQuery.size.height * .28;
}

extension PaddingExtensionAll on BuildContext {
  EdgeInsets get paddingLow => const EdgeInsets.all(4);
  EdgeInsets get paddingMedium => const EdgeInsets.all(8);
  EdgeInsets get paddingHigh => const EdgeInsets.all(16);
}

extension BorderRadiusExtension on BuildContext {
  BorderRadius get borderRadiusAllLow => const BorderRadius.all(Radius.circular(4));
  BorderRadius get borderRadiusAllMedium => const BorderRadius.all(Radius.circular(8));
  BorderRadius get borderRadiusAllHigh => const BorderRadius.all(Radius.circular(16));
}
