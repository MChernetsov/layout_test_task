import 'package:flutter/material.dart';
import 'package:layout_test_task/pages/starting_screen_page.dart';

class LayoutApp extends StatelessWidget {
  const LayoutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartingScreenPage(),
    );
  }
}
