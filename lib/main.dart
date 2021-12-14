import 'package:flutter/material.dart';
import 'package:liquid_swiping1/my_swiper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Image Swiper',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MySwiper(),
    );
  }
}
