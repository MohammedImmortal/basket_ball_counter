import 'package:flutter/material.dart';
import 'package:basketball_counter/basketball_counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Basketball Points Counter',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const PointsCounter(),
    );
  }
}
