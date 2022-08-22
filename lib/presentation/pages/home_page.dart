import 'package:flutter/material.dart';
import 'package:galapedia/common/constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const routeName = '/';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.baby_changing_station),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              size: 32,
            ),
            splashColor: lightBlue,
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Planets', style: littleTitleText),
                Text('Moon', style: littleTitleText),
                Text('Stars', style: littleTitleText),
                Text('Constellation', style: littleTitleText),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.red)),
                  child: Stack(
                    children: [
                      const Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Icon(Icons.notifications, size: 50,),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
