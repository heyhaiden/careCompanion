import 'package:flutter/material.dart';
import 'package:care_companion_app/screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Care Companion App';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: HomePage(), // add onboarding slides here
    );
  }
}
