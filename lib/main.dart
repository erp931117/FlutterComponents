import 'package:flutter/material.dart';
import 'package:flutter_components_example/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home:  HomePageTemp(),
    );
  }
}
