import 'package:flutter/material.dart';
import 'package:shazam/models/data.dart';
import 'package:shazam/screen/song_screen.dart';

class BlibliothequeScreen extends StatefulWidget {
  const BlibliothequeScreen({Key? key}) : super(key: key);

  @override
  State<BlibliothequeScreen> createState() => _BlibliothequeScreenState();
}

class _BlibliothequeScreenState extends State<BlibliothequeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              foregroundColor: Colors.white,
              leading: const Icon(
                Icons.settings,
              ),
              title: const Text("Bibliothèque"),
              centerTitle: true,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            ListTile(
              leading: SizedBox(
                  width: size.width * 0.08,
                  child: Image.asset("assets/images/logo.png")),
              title: const Text(
                "Shazams",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              trailing: const Text(
                "25",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                size: size.width * 0.08,
                color: Colors.grey,
              ),
              title: const Text(
                "Artistes",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.music_note,
                size: size.width * 0.08,
                color: Colors.grey,
              ),
              title: const Text(
                "Playlists pour vous",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Shazams récents",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const Icon(Icons.refresh, color: Colors.white)
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: listmusics.length,
              physics: const BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: size.height * 0.37,
                  crossAxisCount: 2,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 20),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SongScreen(listmusics[index])));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 10),
                        width: size.width * 0.45,
                        color: const Color(0xFF0F2528),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  height: size.height * 0.2,
                                  child: Image.asset(listmusics[index].image,
                                      fit: BoxFit.cover),
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  height: size.height * 0.2,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: CircleAvatar(
                                      radius: 25,
                                      backgroundColor:
                                          Colors.black.withOpacity(0.5),
                                      child: const Icon(
                                        Icons.play_arrow,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  height: size.height * 0.2,
                                  child: const Align(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                      Icons.more_vert,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 7),
                              child: Text(
                                listmusics[index].nom,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: size.width * 0.05,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: size.height * 0.01),
                            Padding(
                              padding: const EdgeInsets.only(left: 7),
                              child: Text(
                                listmusics[index].artiste,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontSize: size.width * 0.04,
                                ),
                              ),
                            ),
                            SizedBox(height: size.height * 0.025),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 3),
                              margin: const EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  color: const Color(0xFF283438),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(
                                    Icons.apple,
                                    color: Colors.white,
                                    size: 17,
                                  ),
                                  const Text(
                                    "Music",
                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            )
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10),
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(8),
            //     child: Container(
            //       padding: EdgeInsets.only(bottom: 10),
            //       width: size.width * 0.45,
            //       color: Color(0xFF0F2528),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           SizedBox(
            //             width: size.width * 0.45,
            //             height: size.height * 0.2,
            //             child: Image.asset("assets/images/artiste.jpg",
            //                 fit: BoxFit.cover),
            //           ),
            //           const SizedBox(height: 10),
            //           Padding(
            //             padding: const EdgeInsets.only(left: 7),
            //             child: Text(
            //               "Helium",
            //               overflow: TextOverflow.ellipsis,
            //               style: TextStyle(
            //                   color: Colors.white,
            //                   fontSize: size.width * 0.06,
            //                   fontWeight: FontWeight.w400),
            //             ),
            //           ),
            //           const SizedBox(height: 10),
            //           Padding(
            //             padding: const EdgeInsets.only(left: 7),
            //             child: Text(
            //               "Sia",
            //               overflow: TextOverflow.ellipsis,
            //               style: TextStyle(
            //                 color: Colors.grey,
            //                 fontWeight: FontWeight.normal,
            //                 fontSize: size.width * 0.04,
            //               ),
            //             ),
            //           ),
            //           const SizedBox(height: 30),
            //           Container(
            //             padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            //             margin: EdgeInsets.only(left: 10),
            //             decoration: BoxDecoration(
            //                 color: Color(0xFF283438),
            //                 borderRadius: BorderRadius.circular(12)),
            //             child: Row(
            //               mainAxisSize: MainAxisSize.min,
            //               children: [
            //                 Icon(
            //                   Icons.apple,
            //                   color: Colors.white,
            //                   size: 17,
            //                 ),
            //                 Text(
            //                   "Music",
            //                   style: TextStyle(
            //                     fontSize: 18,
            //                     color: Colors.white,
            //                   ),
            //                 )
            //               ],
            //             ),
            //           )
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
