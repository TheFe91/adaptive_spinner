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
              Divider(),
              AdaptiveSpinner(
                withTextAlign: TextAlign.center,
                withMessage: 'With message and text',
              ),
              Divider(),
              AdaptiveSpinner(
                withContainer: true,
                width: double.infinity,
                height: 100,
                withMessage: 'With container\nand with\nright-aligned text\n(width: double.infinity, height: 100)',
                color: Colors.black12,
                withTextAlign: TextAlign.right,
              ),
              Divider(),
              AdaptiveSpinner(
                withSizedBox: 100,
                withMessage: 'With SizedBox (side: 100)',
                withTextAlign: TextAlign.center,
              ),
              Divider(),
              AdaptiveSpinner(
                withStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                withMessage: 'With message and styled text',
                withTextAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
