# Adaptive Spinner

[![pub: 0.1.1](https://img.shields.io/pub/v/adaptive_spinner.svg)](https://pub.dev/packages/adaptive_spinner)
[![license: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![style: effective dart](https://img.shields.io/badge/style-effective_dart-40c4ff.svg)](https://pub.dev/packages/effective_dart)

A circular progress indicator, scalable and adaptive to multiple platforms, 100% written in Dart.

## Usage

Using the AdaptiveSpinner is easy as calling a widget of yours.<br>
Simply call `AdaptiveSpinner()` where you want the spinner, and eventually pass some options:<br>
* withMessage: `String?` you can include a message below the spinner
* centeredContainer: `bool?` wether or not center the container
* withTextAlign: `TextAlign?` you can align the message
* withStyle: `TextStyle?` you can style the message
* withSizedBox: `double?` you can specify how big should be the space around spinner
* withRadius: `double?` you can specify the spinner radius
* withContainer: `bool (defaults to false)` if `true` the AdaptiveSpinner will be put inside a `Container` that will accept the following propertis:
  * alignment
  * padding
  * color
  * decoration
  * foregroundDecoration
  * width
  * height
  * margin
  * transform
  * clipBehavior