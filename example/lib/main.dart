import 'package:flutter/material.dart';
import 'package:adaptive_spinner/adaptive_spinner.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AdaptiveSpinner Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AdaptiveSpinner Demo')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              AdaptiveSpinner(),
              SizedBox(height: 40),
              AdaptiveSpinner(
                withCenteredText: true,
                withMessage: 'With message and text',
              ),
              SizedBox(height: 40),
              AdaptiveSpinner(
                withCenteredContainer: 200,
                withMessage: 'With centered container\n(width: 200)',
                withCenteredText: true,
              ),
              SizedBox(height: 40),
              AdaptiveSpinner(
                withSizedBox: 100,
                withMessage: 'With SizedBox (width: 100)',
                withCenteredText: true,
              ),
              SizedBox(height: 40),
              AdaptiveSpinner(
                withStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                withMessage: 'With message and styled text',
                withCenteredText: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
