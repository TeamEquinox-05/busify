import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const BusifyApp());
}

class BusifyApp extends StatelessWidget {
  const BusifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Busify',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}
