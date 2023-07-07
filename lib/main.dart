
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:qr_codegs/view/app.dart';
import 'package:qr_codegs/view/pages/splash.dart';
import 'dart:developer';
void main() async {
  log('App start.');

  final Stopwatch runTime = Stopwatch();
  runTime.start();

  runApp( const SplashPage());

  await Future.delayed(const Duration(seconds: 6));

  runApp(const  App());
  
  runTime.stop();
  log('${runTime.elapsed.inMilliseconds}ms to run app.');

  }

