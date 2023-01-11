import 'package:flutter/material.dart';

class InstaMartHomeScreen extends StatefulWidget {
  const InstaMartHomeScreen({super.key});

  @override
  State<InstaMartHomeScreen> createState() => InstaMartHomeScreenState();
}

class InstaMartHomeScreenState extends State<InstaMartHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //    title: const Text('owo'),
      // ),
      body: Center(
        child: Text('Insta mart',style: TextStyle(fontSize:20),),
      ),);
  }
}