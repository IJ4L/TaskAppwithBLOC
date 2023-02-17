import 'package:flutter/material.dart';
import 'package:taskapp/shared/route.dart';

void main() {
  runApp(
    MyApp(
      approute: AppRoute(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.approute,
  });

  final AppRoute approute;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: approute.generateRoute,
    );
  }
}
