import 'package:flutter/material.dart';
import 'package:galapedia/common/constant.dart';
import 'package:galapedia/presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Galapedia',
      theme: ThemeData.dark().copyWith(
          colorScheme: customTheme,
          primaryColor: darkBlue,
          scaffoldBackgroundColor: darkBlue),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case HomePage.routeName:
            return MaterialPageRoute(builder: (_) => const HomePage());
          default:
            return MaterialPageRoute(builder: (_) => const HomePage());
        }
      },
    );
  }
}
