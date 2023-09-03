import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:voice_to_sign/widgets/login_widget.dart';
import './widgets/homescreen_widget.dart';
import './widgets/login_widget.dart';
import './widgets/splash_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashScreenPage());
  }
}

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SplashScreen(
          seconds: 5,
          navigateAfterSeconds: SplashPage(),
          image: Image.asset('./assets/images/Logo.png'),
          backgroundColor: Color.fromRGBO(5, 10, 48, 1),
          styleTextUnderTheLoader: TextStyle(),
          photoSize: constraints.maxHeight * 0.3, // Adjust the size as needed
          loaderColor: Color.fromRGBO(255, 255, 255, 1),
        );
      },
    );
  }
}
