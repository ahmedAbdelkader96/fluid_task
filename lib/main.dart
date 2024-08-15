import 'package:flutter/material.dart';
import 'package:task/features/main_view/screens/main_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fluid Ai Task',
      theme: ThemeData(
        useMaterial3: true,
          fontFamily: 'HelveticaNeueMedium'
      ),
      home:  const MainView(),
    );
  }
}



