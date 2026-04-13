import 'package:flutter/material.dart';
import '../util/route_names.dart';
import '../view/home_view.dart';
import '../view/confirm_view.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    RouteNames.home: (context) => const HomeView(),
    RouteNames.confirm: (context) => const ConfirmView(),
  };
}