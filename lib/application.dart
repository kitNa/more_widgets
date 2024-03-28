import 'package:flutter/material.dart';
import 'package:more_widgets/routes.dart';


class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor:  Colors.green),
        initialRoute: '/',
        routes: routes
    );
  }
}
