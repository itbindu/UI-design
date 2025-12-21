import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/details_screen.dart';
import 'screens/form_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const HomeScreen(),
  '/details': (context) => const DetailsScreen(),
  '/form': (context) => const FormScreen(),
};
