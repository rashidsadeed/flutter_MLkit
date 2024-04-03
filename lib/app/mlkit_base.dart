import 'package:flutter/material.dart';
import 'package:mlkit_base/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class MLkitBase extends StatelessWidget {
  const MLkitBase({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MLkit Flutter",
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorObservers: [
        StackedService.routeObserver
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      )
    );
  }
}
