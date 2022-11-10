import 'package:adaptive_spinner/adaptive_spinner.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AdaptiveSpinner Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AdaptiveSpinner Demo')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ListView(
            children: const [
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
                withMessage:
                    'With container\nand with\nright-aligned text\n(width: double.infinity, height: 100)',
                withContainerColor: Colors.black12,
                withTextAlign: TextAlign.right,
              ),
              Divider(),
              AdaptiveSpinner(
                withSizedBox: 100,
                withMessage: 'With SizedBox (size: 100)',
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
              Divider(),
              AdaptiveSpinner(
                withStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                withRadius: 20.0,
                withMessage: 'With radius (20)',
              ),
              Divider(),
              AdaptiveSpinner(
                withContainerColor: Colors.pink,
                withSpinnerColor: Colors.greenAccent,
                withDuration: const Duration(milliseconds: 500),
                withMessage:
                    'With colored spinner and container\nand fast spinning (Duration: 500ms)',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
