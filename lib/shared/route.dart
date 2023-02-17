import 'package:flutter/material.dart';
import 'package:taskapp/presention/screens/addtask.dart';
import 'package:taskapp/presention/screens/homepage.dart';
import 'package:taskapp/shared/constans/string.dart';

class AppRoute {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onboarding:
        {
          return MaterialPageRoute(builder: (_) => const Homepage());
        }

      case addtask:
        {
          return MaterialPageRoute(builder: (_) => const Addtask());
        }
      default:
        throw 'No Page Found!!';
    }
  }
}
