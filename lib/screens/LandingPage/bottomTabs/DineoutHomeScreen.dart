import 'package:flutter/material.dart';

class DineoutHomeScreen extends StatefulWidget {
  const DineoutHomeScreen({super.key});

  @override
  State<DineoutHomeScreen> createState() => DineoutHomeScreenState();
}

class DineoutHomeScreenState extends State<DineoutHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //    title: const Text('owo'),
      // ),
      body: Center(
        child: Text('Dine out ',style: TextStyle(fontSize:20),),
      ),);
  }
}