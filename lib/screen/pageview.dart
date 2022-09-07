import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'bibliotheque_screen.dart';
import 'home_screen.dart';
import 'top_screen.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = PageController(keepPage: true);
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Align(
                alignment: Alignment.topCenter,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: WormEffect(
                    dotColor: Colors.grey.withOpacity(0.5),
                    activeDotColor: Colors.white,
                    dotHeight: 8,
                    dotWidth: 8,
                    type: WormType.thin,
                    // strokeWidth: 5,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width,
              height: size.height,
              child: PageView(
                controller: controller,
                children: const [BlibliothequeScreen(), HomeScreen(), TopScreen()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
