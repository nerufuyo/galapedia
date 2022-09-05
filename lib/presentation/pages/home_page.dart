import 'package:flutter/material.dart';
import 'package:galapedia/common/constant.dart';
import 'package:galapedia/presentation/pages/discovery_page.dart';
import 'package:galapedia/presentation/pages/home/planets_page.dart';
import 'package:iconly/iconly.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const routeName = '/';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeContent(),
    DiscoveryPage(),
    Text(
      'Index 2: Favorite',
    ),
    Text(
      'Index 3: Profile',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: darkBlue,
        appBar: AppBar(
          leadingWidth: 44,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Image.asset('assets/images/galapedia.png'),
          ),
          actions: [
            IconButton(
              icon: const Icon(IconlyBold.notification, size: 24),
              splashColor: lightBlue,
              onPressed: () {},
            )
          ],
        ),
        body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            iconSize: 24,
            selectedItemColor: white,
            unselectedItemColor: gray.withOpacity(0.5),
            showUnselectedLabels: false,
            showSelectedLabels: false,
            backgroundColor: lightBlue,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(IconlyBold.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(IconlyBold.discovery), label: 'Discovery'),
              BottomNavigationBarItem(
                  icon: Icon(IconlyBold.heart), label: 'Favorite'),
              BottomNavigationBarItem(
                  icon: Icon(IconlyBold.profile), label: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}
