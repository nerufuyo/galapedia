import 'package:flutter/material.dart';
import 'package:galapedia/common/constant.dart';

class MainNewsWidget extends StatelessWidget {
  const MainNewsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            SizedBox(
              width: 300,
              height: 160,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/images/firstnews.jpg',
                    fit: BoxFit.cover,
                  ),
                  ColoredBox(color: Colors.black.withOpacity(0.3))
                ],
              ),
            ),
            Positioned(
              top: 16,
              right: 16,
              child: Text(
                'August 14, 2022',
                style: boldDescriptionText,
              ),
            ),
            Positioned(
              bottom: 16,
              left: 16,
              width: 225,
              child: Text(
                'Mars Had a Thicker Atmosphere In The Past.',
                style: boldDescriptionText,
              ),
            )
          ],
        ),
      ),
    );
  }
}
