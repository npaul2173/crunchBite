import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
   @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 2),
        () =>   Navigator.pushNamed(context, '/allowLocation'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
        child: Image.asset(
          'assets/image/logo.png',
          width: 150,
          height: 200,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
