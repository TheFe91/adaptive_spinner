library adaptive_spinner;

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveSpinner extends StatelessWidget {
  final String withMessage;
  final bool withCenteredContainer;
  final bool withCenteredText;
  final TextStyle withStyle;
  final double withSizedBox;

  AdaptiveSpinner({
    this.withMessage = '',
    this.withCenteredContainer = false,
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
    final double width = MediaQuery.of(context).size.width;
    return withCenteredContainer
        ? Center(
            child: Container(
              width: width / 5,
              height: width / 5,
              color: Colors.black12,
              child: _buildSpinner(),
            ),
          )
        : _buildSpinner();
  }
}