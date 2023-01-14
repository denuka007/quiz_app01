import 'package:flutter/material.dart';

import './screens/home_screen.dart';

void main() {
  // the runAPp method
  runApp(
    const MyApp(),
  );
}

// create the MyApp widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // remove the debug banner
      debugShowCheckedModeBanner: false,
      // set a homepage
      home: HomeScreen(),
    );
  }
}
