import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Positioned Widget'),
      ),
      body: Container(
        height: 200,
        width: 300,
        color: Colors.blue,
        child: Stack(
          children: [
            Positioned(
              top: 10,
              right: 41,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            ),
            Positioned(
              bottom: 10,
              left: 41,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
