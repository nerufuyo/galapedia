import 'package:flutter/material.dart';
import 'package:galapedia/common/constant.dart';
import 'package:galapedia/common/static.dart';
import 'package:iconly/iconly.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);
  static const routeName = '/detail';

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/detailbg.jpg'),
          ),
        ),
        child: Stack(
          children: [
            const SizedBox(
              width: 120,
              height: 120,
              child: Text(''),
            ),
            Positioned(
              child: Material(
                color: darkBlue.withOpacity(0),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon:
                            const Icon(IconlyBold.arrow_left_circle, size: 36),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(IconlyBold.heart,
                            size: 36, color: Colors.red),
                      )
                    ],
                  ),
                ),
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.7,
              minChildSize: 0.1,
              maxChildSize: 1,
              builder: (BuildContext context, ScrollController controller) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: darkBlue.withOpacity(0.8)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Mercury', style: superTitleText),
                          const SizedBox(width: 8),
                          Text('(Mercurian)', style: littleTitleText)
                        ],
                      ),
                      const ContentSpace(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text('3.7 m/s2', style: mediumLiteTitleText),
                              const SizedBox(height: 4),
                              Text('Gravity', style: mediumDescriptionText)
                            ],
                          ),
                          Column(
                            children: [
                              Text('47.36 km/s', style: mediumLiteTitleText),
                              const SizedBox(height: 4),
                              Text('Orbital', style: mediumDescriptionText)
                            ],
                          ),
                          Column(
                            children: [
                              Text('0.0009', style: mediumLiteTitleText),
                              const SizedBox(height: 4),
                              Text('Flattening', style: mediumDescriptionText)
                            ],
                          ),
                        ],
                      ),
                      const ContentSpace(),
                      Text(
                        'Mercury is the smallest planet in the Solar System and the closest to the Sun. '
                        'Its orbit around the Sun takes 87.97 Earth days, the shortest of all the '
                        'Suns planets. It is named after the Roman god Mercurius (Mercury), god of '
                        'commerce, messenger of the gods, and mediator between gods and mortals, '
                        'corresponding to the Greek god Hermes (Ἑρμῆς).',
                        style: mediumDescriptionText,
                        textAlign: TextAlign.justify,
                      ),
                      const ContentSpace(),
                      Text('Gallery', style: titleText),
                      const SizedBox(height: 8),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/firstnews.jpg',
                                width: 260,
                                height: 140,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 20),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/firstnews.jpg',
                                width: 260,
                                height: 140,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
