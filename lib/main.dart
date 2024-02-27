import 'package:flutter/material.dart';
import 'package:kiboowi_project/book.dart';
import 'package:kiboowi_project/registro.dart';
import 'package:kiboowi_project/singin.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyBook(title: '<'),
    );
  }
}

