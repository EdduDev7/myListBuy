import 'package:flutter/material.dart';
import 'package:mylistbuy/view/splash_screen.dart';
import 'package:mylistbuy/view_models/AppViewModels.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Appviewmodels(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Queensides'),
      home: SplashScreen(),
    );
  }
}
