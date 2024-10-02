import 'package:flutter/material.dart';
import 'package:pak_games/Utils/colors.dart';

import 'Home Screen/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primary),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ' PAK\n =Games='),
    );
  }
}

