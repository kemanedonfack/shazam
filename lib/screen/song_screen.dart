import 'package:flutter/material.dart';
import 'package:shazam/models/music.dart';

import '../models/data.dart';

class SongScreen extends StatefulWidget {
  final Music music;
  const SongScreen(this.music, {Key? key}) : super(key: key);

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
              height: size.height * 0.7,
              child: Stack(
                children: [
                  Container(
                    height: size.height * 0.7,
                    child: Image.asset(widget.music.image, fit: BoxFit.cover),
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
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        AppBar(
                          backgroundColor: Colors.transparent,
                          foregroundColor: Colors.white,
                          elevation: 0,
                          leading: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(Icons.arrow_back)),
                          actions: [
                            const Icon(Icons.share),
                            SizedBox(
                              width: size.width * 0.04,
                            ),
                            const Icon(Icons.more_vert),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: size.width * 0.8,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(widget.music.nom,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: size.height * 0.01,
                                    ),
                                    Text(widget.music.artiste,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            color: Colors.grey,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: size.height * 0.01,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                            width: size.width * 0.06,
                                            child: Image.asset(
                                                "assets/images/logo.png")),
                                        const Text("200 000 Shazams",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.grey.withOpacity(0.5),
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
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              width: double.infinity,
              color: Colors.black,
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    width: size.width * 0.57,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.amber,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1),
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.music_note_outlined,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "ECOUTER EN ENTIER",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.015,
                  ),
                  const Text("Obtenez jusqu'a 1 mois gratuit d'Apple music",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: size.height * 0.07,
                  ),
                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text("LES TITRES POPULAIRES",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold))),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  for (int i = 0; i < listmusics.length && i < 4; i++)
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              SizedBox(
                                  width: size.height * 0.15,
                                  height: size.height * 0.12,
                                  child: Image.asset(
                                    listmusics[i].image,
                                    fit: BoxFit.cover,
                                  )),
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
                          SizedBox(
                            width: size.width * 0.03,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(listmusics[i].artiste,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Text(listmusics[i].nom,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 3),
                                margin: const EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                    color: const Color(0xFF283438),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.apple,
                                      color: Colors.white,
                                      size: 17,
                                    ),
                                    Text(
                                      "Music",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    )
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
