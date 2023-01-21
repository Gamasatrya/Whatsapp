import 'dart:async';

import 'package:flutter/material.dart';
import 'package:latihan/ChatPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => ChatPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset("asset/item.png")]),
    );
  }
}
