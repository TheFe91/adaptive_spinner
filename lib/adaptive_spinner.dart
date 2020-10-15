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

  /// Add centered container
  final double withCenteredContainer;

  /// Center the message text
  final bool withCenteredText;

  /// Style the message text
  final TextStyle withStyle;

  /// Size the Spinner
  final double withSizedBox;

  /// Every argument is optional
  AdaptiveSpinner({
    this.withMessage = '',
    this.withCenteredContainer,
    this.withCenteredText = false,
    this.withStyle,
    this.withSizedBox,
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
                      strokeWidth: 4 * withSizedBox / 35,
                    ),
                  )
                : SizedBox(
                    width: withSizedBox,
                    height: withSizedBox,
                    child: CupertinoActivityIndicator(),
                  )
            : Platform.isAndroid
                ? CircularProgressIndicator()
                : CupertinoActivityIndicator(),
        if (withMessage != '')
          Text(
            withMessage,
            textAlign: withCenteredText ? TextAlign.center : TextAlign.left,
            style: withStyle,
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return withCenteredContainer != null
        ? Center(
            child: Container(
              width: withCenteredContainer,
              height: withCenteredContainer,
              color: Colors.black12,
              child: _buildSpinner(),
            ),
          )
        : _buildSpinner();
  }
}
