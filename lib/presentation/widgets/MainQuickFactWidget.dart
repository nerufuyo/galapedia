import 'package:flutter/material.dart';
import 'package:galapedia/common/constant.dart';

class MainQuickFactWidget extends StatelessWidget {
  const MainQuickFactWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: lightBlue,
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/infologo.png',
                  width: 40,
                  height: 40,
                ),
                const SizedBox(height: 4),
                Text(
                  'Fun Fact!',
                  style: infoText,
                )
              ],
            ),
            SizedBox(
              width: 200,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: 'Mercury is hot, but not too hot for ice, ',
                        style: liteTitleText),
                    TextSpan(
                        text:
                            'It sounds surprising at first glance, but the ice is found in '
                            'permanently shadowed craters that never receive sunlight'
                            '.',
                        style: liteDescriptionText)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
