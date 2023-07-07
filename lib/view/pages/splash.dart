import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return 

      Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: Center(child: Image.asset("assets/gscode.png")),
      ),
    );
    
  }
}