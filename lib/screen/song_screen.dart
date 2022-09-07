import 'package:flutter/material.dart';

class SongScreen extends StatefulWidget {
  const SongScreen({Key? key}) : super(key: key);

  @override
  State<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height*0.7,
              child: Stack(
                children: [
                  Container(              
                    height: size.height*0.7,
                    child: Image.asset("assets/images/artiste.jpg", fit: BoxFit.cover),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.01),
                          Colors.black.withOpacity(0.98),
                        ],
                      )
                    ),
                    child: Column(
                       crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.max,
                      children: [
                        AppBar(
                          backgroundColor: Colors.transparent,
                          foregroundColor: Colors.white,
                          elevation: 0,
                          leading: Icon(Icons.arrow_back),
                          actions: [
                            Icon(Icons.share),
                            SizedBox(width: size.width*0.04,),
                            Icon(Icons.more_vert),
                            SizedBox(width: size.width*0.02,),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: size.width*0.8,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Love is Not Hard To Find", maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold)),
                                    SizedBox(height: size.height*0.01,),
                                    Text("Yendry", maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold)),
                                    SizedBox(height: size.height*0.01,),
                                    Row(
                                      children: [
                                        Container(
                                          width: size.width*0.06,
                                          child: Image.asset("assets/images/logo.png")
                                        ),
                                        Text("200 000 Shazams", maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold)),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              CircleAvatar(
                                radius: 25,
                                backgroundColor:  Colors.grey.withOpacity(0.5),
                                child: const Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              width: double.infinity,
              color: Colors.black,
              child: Column(
                children: [ 
                  SizedBox(height: size.height*0.02,),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 10),
                    width: size.width*0.57,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.amber,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1),
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: Icon( Icons.music_note_outlined, color: Colors.white,),
                        ),
                        Text("ECOUTER EN ENTIER", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  SizedBox(height: size.height*0.015,),
                  Text("Obtenez jusqu'a 1 mois gratuit d'Apple music", maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                  SizedBox(height: size.height*0.07,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("LES TITRES POPULAIRES", maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold))),
                  SizedBox(height: size.height*0.03,),
                  Container(
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: size.height*0.15,
                              child: Image.asset("assets/images/artiste.jpg")
                            ),
                            // Align(
                            //   alignment: Alignment.center,
                            //   child: CircleAvatar(
                            //     radius: 25,
                            //     backgroundColor:  Colors.grey.withOpacity(0.5),
                            //     child: const Icon(
                            //       Icons.play_arrow,
                            //       color: Colors.white,
                            //       size: 30,
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                        SizedBox(width: size.width*0.03,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nena - A Colors show", maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                            Text("YENDY", maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                            Container(
                              padding: const EdgeInsets.symmetric( horizontal: 5, vertical: 3),
                              margin: const EdgeInsets.only(top: 10),
                              decoration: BoxDecoration( 
                                color: const Color(0xFF283438),
                                borderRadius: BorderRadius.circular(12)),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.apple, color: Colors.white, size: 17,
                                  ),
                                  Text("Music", style: TextStyle( fontSize: 16,  color: Colors.white, ), )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}