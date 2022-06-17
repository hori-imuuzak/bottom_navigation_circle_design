import 'package:bottom_sheet_ciecle_design/bottom_navigation_background_painter.dart';
import 'package:bottom_sheet_ciecle_design/custom_bottom_navigation_bar.dart';
import 'package:bottom_sheet_ciecle_design/gradient_box.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBox(
        child: SafeArea(
          child: Stack(
            children: const [
              Center(
                child: Text(
                  'BottomNavigation',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: BottomNavigationBackgroundPainter(),
              ),
            ],
          ),
        ),
      ),
      extendBody: true,
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
