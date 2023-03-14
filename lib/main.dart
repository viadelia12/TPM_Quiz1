import 'package:flutter/material.dart';
import 'package:quiz_tpm_123200023/pages/splash_screen.dart';
import 'package:quiz_tpm_123200023/routes/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: RouteGenerator.generateRoute,
      home: SplashScreen(),
    );
  }
}
