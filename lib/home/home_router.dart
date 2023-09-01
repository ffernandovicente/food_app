import 'package:flutter/material.dart';
import 'package:food_app/home/home.dart';
import 'package:food_app/router/router.dart';
import 'package:go_router/go_router.dart';

final GoRoute homeRouter = GoRoute(
  path: '/a',
  builder: (BuildContext context, GoRouterState state) => const HomePage(),
  routes: <RouteBase>[
    GoRoute(
      path: 'details',
      builder: (BuildContext context, GoRouterState state) =>
          const DetailsScreen(label: 'A'),
    ),
  ],
);
