import 'package:flutter/material.dart';
import 'package:shazam/models/data.dart';

class TopScreen extends StatefulWidget {
  const TopScreen({Key? key}) : super(key: key);

  @override
  State<TopScreen> createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              foregroundColor: Colors.white,
              title: const Text("Les Tops"),
              centerTitle: true,
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Stack(
              children: [
                Image.asset("assets/images/map-white.png"),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: size.height * 0.08,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Material(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          child: MaterialButton(
                            minWidth: MediaQuery.of(context).size.width,
                            onPressed: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => const DashboardScreen()));
                            },
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                "LES TOPS PAR PAYS E PAR VILLES",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      const Text("DU MONDE ENTIER",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Le top modial",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  Text("Voir",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 2, bottom: 10),
              child: Row(
                children: [
                  for (int i = 0; i < listmusics.length && i < 3; i++)
                    SizedBox(
                      width: size.width * 0.33,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: const EdgeInsets.only(right: 8),
                              width: size.width * 0.33,
                              height: size.height * 0.2,
                              child: Image.asset(
                                listmusics[i].image,
                                fit: BoxFit.cover,
                              )),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Text(listmusics[i].nom,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: size.height * 0.005,
                          ),
                          Text(listmusics[i].artiste,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 2, bottom: 10),
              child: Row(
                children: [
                  for (int i = 3; i < listmusics.length && i < 6; i++)
                    SizedBox(
                      width: size.width * 0.33,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: const EdgeInsets.only(right: 8),
                              width: size.width * 0.33,
                              height: size.height * 0.2,
                              child: Image.asset(
                                listmusics[i].image,
                                fit: BoxFit.cover,
                              )),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Text(listmusics[i].nom,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: size.height * 0.005,
                          ),
                          Text(listmusics[i].artiste,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 2, bottom: 10),
              child: Row(
                children: [
                  for (int i = 6; i < listmusics.length && i < 9; i++)
                    SizedBox(
                      width: size.width * 0.33,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: const EdgeInsets.only(right: 8),
                              width: size.width * 0.33,
                              height: size.height * 0.2,
                              child: Image.asset(
                                listmusics[i].image,
                                fit: BoxFit.cover,
                              )),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Text(listmusics[i].nom,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: size.height * 0.005,
                          ),
                          Text(listmusics[i].artiste,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
