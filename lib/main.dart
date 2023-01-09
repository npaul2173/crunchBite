import 'package:crunch_bite/screens/LandingPage/LandingPageScreen.dart';
import 'package:crunch_bite/screens/OtpScreen/index.dart';
import 'package:crunch_bite/screens/Splash/index.dart';
import 'package:crunch_bite/screens/Welcome/index.dart';
import 'package:crunch_bite/screens/location/AllowLocationScreen.dart';
//import 'package:crunch_bite/screens/location/AllowLocationScreen.dart';
import 'package:flutter/material.dart';

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
          fontFamily: 'LexendDeca',
          primarySwatch: Colors.blue,
        ),
        // home: const Splash()
        initialRoute: '/',
        routes: {
            '/': (context) => const Splash(),
            '/welcome': (context) => const Welcome(),
            '/otp': (context) => const OtpScreen(),
            '/allowLocation': (context) => const AllowLocationScreen(),
            '/landingPage': (context) => const LandingPageScreen(),
        },
        );
        
  }
}
