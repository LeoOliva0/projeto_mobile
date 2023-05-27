import 'package:flutter/material.dart';
import 'package:projeto_mobile/HomePage.dart';
import 'WelcomePage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        
        primarySwatch: Colors.green,
      ),
      home:const  WelcomePage(title: 'YourTasks',),
    );
  }
}

