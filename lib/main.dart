import 'package:flutter/material.dart';
import 'package:three_d_sample/model_viewer_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 3D Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      // TODO: change home according to the dependency
      home: ModelViewerPlusWidget(),
    );
  }
}