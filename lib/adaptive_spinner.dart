library adaptive_spinner;

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///
/// A circular progress indicator, scalable and adaptive to multiple platforms
///
class AdaptiveSpinner extends StatelessWidget {
  /// Add a message to the spinner
  final String withMessage;

  /// Center the container
  final bool centeredContainer;

  /// Align the message text
  final TextAlign withTextAlign;

  /// Style the message text
  final TextStyle withStyle;

  /// Size the Spinner
  final double withSizedBox;

  /// Radius of the Spinner
  final double withRadius;

  /// Wrap the spinner in a customizable container
  final bool withContainer;

  /// Container's height
  final double height;

  /// /// Container's width
  final double width;

  /// Container's BoxDecoration
  final Decoration decoration;

  /// Container's padding
  final EdgeInsetsGeometry padding;

  /// Container's color
  final Color color;

  /// Container's alignment
  final Alignment alignment;

  /// Container's Foreground Decoration
  final Decoration foregroundDecoration;

  /// Container's clip behavior
  final Clip clipBehavior;

  /// Container's margins
  final EdgeInsetsGeometry margin;

  /// Container's transform matrix
  final Matrix4 matrix;

  /// Every argument is optional
  AdaptiveSpinner({
    this.alignment,
    this.centeredContainer = false,
    this.clipBehavior = Clip.none,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    this.height,
    this.margin,
    this.matrix,
    this.padding,
    this.width,
    this.withContainer = false,
    this.withMessage,
    this.withRadius,
    this.withSizedBox,
    this.withStyle,
    this.withTextAlign,
  });

  Widget _buildSpinner() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        withSizedBox != null
            ? Platform.isAndroid
                ? SizedBox(
                    width: withSizedBox,
                    height: withSizedBox,
                    child: CircularProgressIndicator(
                      strokeWidth: withRadius ?? 4
                    ),
                  )
                : SizedBox(
                    width: withSizedBox,
                    height: withSizedBox,
                    child: CupertinoActivityIndicator(
                      radius: withRadius ?? 10,
                    ),
                  )
            : Platform.isAndroid
                ? CircularProgressIndicator(strokeWidth: withRadius ?? 4)
                : CupertinoActivityIndicator(radius: withRadius ?? 10),
        if (withMessage != null)
          Text(
            withMessage,
            textAlign: withTextAlign ?? TextAlign.center,
            style: withStyle,
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return withContainer
        ? centeredContainer
            ? Center(
                child: Container(
                  alignment: alignment,
                  padding: padding,
                  color: color,
                  decoration: decoration,
                  foregroundDecoration: foregroundDecoration,
                  width: width,
                  height: height,
                  margin: margin,
                  transform: matrix,
                  clipBehavior: clipBehavior,
                  child: _buildSpinner(),
                ),
              )
            : Container(
                alignment: alignment,
                padding: padding,
                color: color,
                decoration: decoration,
                foregroundDecoration: foregroundDecoration,
                width: width,
                height: height,
                margin: margin,
                transform: matrix,
                clipBehavior: clipBehavior,
                child: _buildSpinner(),
              )
        : _buildSpinner();
  }
}
