import 'package:arstask/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.blue),
            titleTextStyle: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.w600, fontSize: 25)),
      ),
      darkTheme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      themeMode: ThemeMode.light,
      home: HomeView(),
    );
  }
}
