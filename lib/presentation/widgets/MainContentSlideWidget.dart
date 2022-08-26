import 'package:flutter/material.dart';
import 'package:galapedia/common/constant.dart';
import 'package:galapedia/presentation/pages/detail_page.dart';
import 'package:iconly/iconly.dart';

class MainContentSlideWidget extends StatelessWidget {
  const MainContentSlideWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 28, left: 10),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 240,
            height: 260,
            decoration: BoxDecoration(
              border: Border.all(
                color: white,
                width: 2,
              ),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
            ),
            padding:
                const EdgeInsets.only(top: 84, left: 6, right: 6, bottom: 6),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(20),
                ),
                color: gray.withOpacity(.15),
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mercury',
                    style: titleText,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Mercury is a chemical element with the symbol Hg and atomic number 80. '
                    'It is also known as quicksilver and was formerly named hydrargyrum '
                    'from the Greek words, hydor and argyros. ',
                    style: littleDescriptionText,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: -30,
            left: -12,
            child: Image.asset(
              'assets/images/mercury.png',
              width: 110,
              height: 110,
            ),
          ),
          Positioned(
            top: 64,
            right: 24,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, DetailPage.routeName);
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: gray),
                padding: const EdgeInsets.all(2),
                child: const Icon(
                  IconlyBold.arrow_right_2,
                  color: darkBlue,
                  size: 36,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
