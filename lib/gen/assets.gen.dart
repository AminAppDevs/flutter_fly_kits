/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/assets.gen.dart
  String get assetsGen => 'assets/images/assets.gen.dart';

  $AssetsImagesGroceryGen get grocery => const $AssetsImagesGroceryGen();

  /// File path: assets/images/logo.svg
  String get logo => 'assets/images/logo.svg';

  /// File path: assets/images/logo_dark.svg
  String get logoDark => 'assets/images/logo_dark.svg';

  /// List of all assets
  List<String> get values => [assetsGen, logo, logoDark];
}

class $AssetsImagesGroceryGen {
  const $AssetsImagesGroceryGen();

  /// File path: assets/images/grocery/avatar.jpg
  AssetGenImage get avatar =>
      const AssetGenImage('assets/images/grocery/avatar.jpg');

  /// File path: assets/images/grocery/bakery.png
  AssetGenImage get bakery =>
      const AssetGenImage('assets/images/grocery/bakery.png');

  /// File path: assets/images/grocery/banana.png
  AssetGenImage get banana =>
      const AssetGenImage('assets/images/grocery/banana.png');

  /// File path: assets/images/grocery/basket.svg
  String get basket => 'assets/images/grocery/basket.svg';

  /// File path: assets/images/grocery/cat1.png
  AssetGenImage get cat1 =>
      const AssetGenImage('assets/images/grocery/cat1.png');

  /// File path: assets/images/grocery/dairy.png
  AssetGenImage get dairy =>
      const AssetGenImage('assets/images/grocery/dairy.png');

  /// File path: assets/images/grocery/eggs.png
  AssetGenImage get eggs =>
      const AssetGenImage('assets/images/grocery/eggs.png');

  /// File path: assets/images/grocery/ginger.png
  AssetGenImage get ginger =>
      const AssetGenImage('assets/images/grocery/ginger.png');

  /// File path: assets/images/grocery/grocery_slide_1.png
  AssetGenImage get grocerySlide1 =>
      const AssetGenImage('assets/images/grocery/grocery_slide_1.png');

  /// File path: assets/images/grocery/grocery_slide_2.png
  AssetGenImage get grocerySlide2 =>
      const AssetGenImage('assets/images/grocery/grocery_slide_2.png');

  /// File path: assets/images/grocery/grocery_slide_3.png
  AssetGenImage get grocerySlide3 =>
      const AssetGenImage('assets/images/grocery/grocery_slide_3.png');

  /// File path: assets/images/grocery/meat.png
  AssetGenImage get meat =>
      const AssetGenImage('assets/images/grocery/meat.png');

  /// File path: assets/images/grocery/meat2.png
  AssetGenImage get meat2 =>
      const AssetGenImage('assets/images/grocery/meat2.png');

  /// File path: assets/images/grocery/oil.png
  AssetGenImage get oil => const AssetGenImage('assets/images/grocery/oil.png');

  /// File path: assets/images/grocery/onboarding_bg.png
  AssetGenImage get onboardingBg =>
      const AssetGenImage('assets/images/grocery/onboarding_bg.png');

  /// File path: assets/images/grocery/order_success.svg
  String get orderSuccess => 'assets/images/grocery/order_success.svg';

  /// File path: assets/images/grocery/red_apple.png
  AssetGenImage get redApple =>
      const AssetGenImage('assets/images/grocery/red_apple.png');

  /// File path: assets/images/grocery/shata.png
  AssetGenImage get shata =>
      const AssetGenImage('assets/images/grocery/shata.png');

  /// File path: assets/images/grocery/vegatables.png
  AssetGenImage get vegatables =>
      const AssetGenImage('assets/images/grocery/vegatables.png');

  /// List of all assets
  List<dynamic> get values => [
        avatar,
        bakery,
        banana,
        basket,
        cat1,
        dairy,
        eggs,
        ginger,
        grocerySlide1,
        grocerySlide2,
        grocerySlide3,
        meat,
        meat2,
        oil,
        onboardingBg,
        orderSuccess,
        redApple,
        shata,
        vegatables
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
