import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: size.width,
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.02,
          ),
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
                  Icon(Icons.auto_graph, color: Colors.white),
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
          SizedBox(height: size.height * 0.1),
          Container(
            padding: const EdgeInsets.all(5),
            child: Text("Touchez pour shazamer",
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.07,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          CircleAvatar(
              maxRadius: 120,
              backgroundColor: Colors.grey.withOpacity(0.4),
              backgroundImage: const AssetImage("assets/images/logo.png")),

          SizedBox(
            height: size.height * 0.08,
          ),
          CircleAvatar(
            maxRadius: 25,
            backgroundColor: Colors.grey.withOpacity(0.4),
            child: Icon(Icons.search, color: Colors.white),
          ),

          // ClipRRect(
          //   borderRadius: BorderRadius.circular(50),
          //   child: Container(
          //       color: Colors.grey,
          //       width: size.width * 0.5,
          //       child: Image.asset("assets/images/logo.png")),
          // )
        ],
      ),
    ));
  }
}
