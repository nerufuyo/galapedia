import 'package:flutter/material.dart';
import 'package:galapedia/common/constant.dart';
import 'package:galapedia/common/static.dart';
import 'package:galapedia/presentation/widgets/MainContentSlideWidget.dart';
import 'package:galapedia/presentation/widgets/MainNewsWidget.dart';
import 'package:galapedia/presentation/widgets/MainQuickFactWidget.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 36,
          child: TabBar(
            labelColor: white,
            unselectedLabelColor: gray,
            indicatorColor: orange,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 4,
            indicatorPadding: EdgeInsets.zero,
            isScrollable: true,
            tabs: [
              Tab(child: Text('Planets', style: littleTitleText)),
              Tab(child: Text('Moons', style: littleTitleText)),
              Tab(child: Text('Stars', style: littleTitleText)),
              Tab(child: Text('Constellations', style: littleTitleText)),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TabBarView(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            MainContentSlideWidget(),
                            SizedBox(width: 10),
                            MainContentSlideWidget(),
                            SizedBox(width: 10),
                            MainContentSlideWidget(),
                            SizedBox(width: 10),
                            MainContentSlideWidget(),
                          ],
                        ),
                      ),
                      const ContentSpace(),
                      const MainQuickFactWidget(),
                      const ContentSpace(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text('Latest News', style: littleTitleText),
                      ),
                      const SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: const [
                            MainNewsWidget(),
                            SizedBox(width: 10),
                            MainNewsWidget(),
                            SizedBox(width: 10),
                            MainNewsWidget(),
                            SizedBox(width: 10),
                            MainNewsWidget(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const Center(child: Text('Moons')),
                const Center(child: Text('Stars')),
                const Center(child: Text('Constellations')),
              ],
            ),
          ),
        )
      ],
    );
  }
}
