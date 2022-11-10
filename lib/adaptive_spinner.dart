library adaptive_spinner;

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const radiusDefaultValue = 50.0;

///
/// A circular progress indicator, scalable and adaptive to multiple platforms
///
class AdaptiveSpinner extends StatelessWidget {
  /// Add a message to the spinner
  final String? withMessage;

  /// Customize the spinner's color
  final Color withSpinnerColor;

  // Customize the spinner's speed
  final Duration withDuration;

  /// Align the message text
  final TextAlign? withTextAlign;

  /// Style the message text
  final TextStyle? withStyle;

  /// Size the Spinner
  final double? withSizedBox;

  /// Radius of the Spinner
  final double withRadius;

  /// Wrap the spinner in a customizable container
  final bool withContainer;

  /// Container's height
  final double? height;

  /// /// Container's width
  final double? width;

  /// Container's BoxDecoration
  final Decoration? decoration;

  /// Container's padding
  final EdgeInsetsGeometry? padding;

  /// Container's color
  final Color? withContainerColor;

  /// Container's alignment
  final Alignment? alignment;

  /// Container's Foreground Decoration
  final Decoration? foregroundDecoration;

  /// Container's clip behavior
  final Clip clipBehavior;

  /// Container's margins
  final EdgeInsetsGeometry? margin;

  /// Container's transform matrix
  final Matrix4? matrix;

  /// Every argument is optional
  const AdaptiveSpinner({
    Key? key,
    this.alignment,
    this.clipBehavior = Clip.none,
    this.withContainerColor,
    this.withSpinnerColor = Colors.black,
    this.decoration,
    this.foregroundDecoration,
    this.height,
    this.margin,
    this.matrix,
    this.padding,
    this.width,
    this.withContainer = false,
    this.withMessage,
    this.withRadius = radiusDefaultValue,
    this.withSizedBox,
    this.withStyle,
    this.withTextAlign,
    this.withDuration = const Duration(milliseconds: 1200),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: withSizedBox,
          height: withSizedBox,
          child: Container(
            alignment: alignment,
            padding: padding,
            color: withContainerColor,
            decoration: decoration,
            foregroundDecoration: foregroundDecoration,
            width: width,
            height: height,
            margin: margin,
            transform: matrix,
            clipBehavior: clipBehavior,
            child: SpinKitFadingCircle(
              size: withRadius,
              color: withSpinnerColor,
              duration: withDuration,
            ),
          ),
        ),
        if (withMessage != null)
          Text(
            withMessage!,
            textAlign: withTextAlign ?? TextAlign.center,
            style: withStyle,
          )
      ],
    );
  }
}
