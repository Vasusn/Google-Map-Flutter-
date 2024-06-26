import 'package:flutter/material.dart';
import 'package:google_map/convert_latlang_to_address.dart';
import 'package:google_map/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Map Flutter',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ConvertLatlangToAddress()
      // home: const HomeScreen()
    );
  }
}
