import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/screens/principal/base_screen.dart';

void main() {
  runApp(MyApp());
}


  class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Provider(
    create: (BuildContext context) {  },
    child: MaterialApp(
    title: 'SPTAM',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
    primarySwatch: Colors.orange,
      appBarTheme: const AppBarTheme(
          elevation: 0
      ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: BaseScreen(),
    ),
  );
  }
  }