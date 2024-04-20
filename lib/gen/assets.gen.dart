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

  /// File path: assets/images/grocery/banana.png
  AssetGenImage get banana =>
      const AssetGenImage('assets/images/grocery/banana.png');

  /// File path: assets/images/grocery/basket.svg
  String get basket => 'assets/images/grocery/basket.svg';

  /// File path: assets/images/grocery/eggs.png
  AssetGenImage get eggs =>
      const AssetGenImage('assets/images/grocery/eggs.png');

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

  /// File path: assets/images/grocery/onboarding_bg.png
  AssetGenImage get onboardingBg =>
      const AssetGenImage('assets/images/grocery/onboarding_bg.png');

  /// File path: assets/images/grocery/red_apple.png
  AssetGenImage get redApple =>
      const AssetGenImage('assets/images/grocery/red_apple.png');

  /// List of all assets
  List<dynamic> get values => [
        banana,
        basket,
        eggs,
        grocerySlide1,
        grocerySlide2,
        grocerySlide3,
        meat,
        onboardingBg,
        redApple
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
