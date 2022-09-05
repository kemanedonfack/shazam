import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'screen/pageview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    Map<int, Color> color =
    {
      50:const Color.fromRGBO(136,14,79, .1),
      100:const Color.fromRGBO(136,14,79, .2),
      200:const Color.fromRGBO(136,14,79, .3),
      300:const Color.fromRGBO(136,14,79, .4),
      400:const Color.fromRGBO(136,14,79, .5),
      500:const Color.fromRGBO(136,14,79, .6),
      600:const Color.fromRGBO(136,14,79, .7),
      700:const Color.fromRGBO(136,14,79, .8),
      800:const Color.fromRGBO(136,14,79, .9),
      900:const Color.fromRGBO(136,14,79, 1),
    };

    MaterialColor primary = MaterialColor(0xFF000F1B, color);

    return MaterialApp(
      title: 'Shazam',
      theme: ThemeData(
        primarySwatch: primary,
        fontFamily: 'San Francisco',
      ),
      debugShowCheckedModeBanner: false,
      home: PageViewScreen(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(keepPage: true);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.8),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SmoothPageIndicator(
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
              SizedBox(
                width: size.width,
                height: size.height,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: controller,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      width: size.width,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: const [
                                  Icon(Icons.music_note, color: Colors.white),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Bibliothèque",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: const [
                                  Icon(Icons.music_note, color: Colors.white),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Les Tops",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.flash_on_rounded,
                                color: Colors.white,
                                size: size.width * 0.05,
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Text("Touchez pour shazamer hors ligne",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: size.width * 0.05)),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
