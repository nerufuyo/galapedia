import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:galapedia/presentation/bloc/news_bloc/news_bloc.dart';
import 'package:galapedia/presentation/pages/discovery_page.dart';
import 'package:provider/provider.dart';
import 'injection.dart' as di;
import 'package:flutter/material.dart';
import 'package:galapedia/common/constant.dart';
import 'package:galapedia/presentation/pages/detail_page.dart';
import 'package:galapedia/presentation/pages/home_page.dart';

void main() async {
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(create: (_) => di.locator<NewsBloc>()),
      ],
      child: MaterialApp(
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
            case DetailPage.routeName:
              return MaterialPageRoute(builder: (_) => const DetailPage());
            case DiscoveryPage.routeName:
              return MaterialPageRoute(builder: (_) => const DiscoveryPage());
            default:
              return MaterialPageRoute(builder: (_) => const HomePage());
          }
        },
      ),
    );
  }
}
