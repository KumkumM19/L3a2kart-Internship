import 'package:flutter/material.dart';
import 'package:internship_test/views/vehicle_settings.dart';
import 'constants/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Vehicle",
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
          ),
          fontFamily: regular,
        ),
        home: Vehicle_Settings()
    );

  }
}

class homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          color:Colors.red,
        )
    );
  }

}

