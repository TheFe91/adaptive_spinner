# adaptive_spinner

A circular progress indicator, scalable and adaptive to multiple platforms, 100% written in Dart.

## Usage

Using the AdaptiveSpinner is easy as calling a widget of yours. Simply call `AdaptiveSpinner()` where you want the spinner, and eventually pass some options:<br>
* withMessage: `String` you can include a message below the spinner
* withCenteredContainer: `double` you can put the spinner in a container with opaque background and specify how big this container will be
* withCenteredText: `boolean` you can center the message
* withStyle: `TextStyle` you can style the message
* withSizedBox: `double` you can specify how big should be the space around spinner