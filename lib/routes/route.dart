import 'package:flutter/material.dart';
import 'package:quiz_tpm_123200023/pages/layang.dart';
import 'package:quiz_tpm_123200023/pages/profile.dart';
import 'package:quiz_tpm_123200023/pages/segitiga.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/profile':
        return MaterialPageRoute(builder: (_) => Profile());
      case '/segitiga':
        return MaterialPageRoute(builder: (_) => Segitiga());
      case '/layang':
        return MaterialPageRoute(builder: (_) => LayangLayang());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Error"),
        ),
        body: const Center(
          child: Text("Error Page"),
        ),
      );
    });
  }
}
