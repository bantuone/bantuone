import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:bantuone/core/constants/colors.dart';
import 'package:bantuone/core/constants/image_path.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);
  

  @override
  _homesState createState() => _homesState();
}

class _homesState extends State<HomeView> {

  List<String> imagesAsset = [
    article_image,
    article_image,
    article_image,
    article_image,
  ];
  
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorTemp1,
      body: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          Container(
                            margin: EdgeInsets.only(top: 130),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    "Artikel & Tutorial",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: secondaryColor
                                    ),
                                  ),        
                                )
                              ],
                            ),
                          ),
                      
                          Container(
                            margin: EdgeInsets.only(top: 130),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    "Artikel lainnya",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: secondaryColor
                                    ),
                                  ),        
                                )
                              ],
                            ),
                          ),  
                        ],
                      ),

                    ),
                    
                    // Container(
                    //   child: Column(
                    //     // mainAxisAlignment: MainAxisAlignment.center,
                    //     children: <Widget>[
                    //       PageView.builder(
                    //         itemCount: 4,
                    //         pageSnapping: true,
                    //         itemBuilder: (context,pagePosition){
                    //           return Container(
                    //             margin: EdgeInsets.all(10),
                    //             child: Image.network(images[pagePosition]));
                    //         })
                            
                    //     ],
                    //   ),

                    // ),

                    Container(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CarouselSlider(
                            options: CarouselOptions(
                              height: 150.0,
                              enableInfiniteScroll: true,
                              ),
                            carouselController: buttonCarouselController,
                            items: imagesAsset.map((item) => Container(
                              padding: const EdgeInsets.only(left: 12),
                              child: Stack(
                                children: [
                                  Image(image: AssetImage(article_image)),
                                  Container(
                                    margin: const EdgeInsets.only(top: 108, left: 12, right: 12),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Hal-hal yang perlu dilakukan saat memberikan bantuan pertama",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: secondaryColor
                                          ),
                                        ), 
                                      ],
                                    ),
                                  ) 
                                ],
                              )
                            ))
                            .toList(),
                          ),
                            
                        ],
                      ),

                    ),
  
                    // Container(
                    //   child: Column(
                    //     children: <Widget>[
                    //       Flexible(
                    //         child: new GridView.count(
                    //           crossAxisCount: 4,
                    //           childAspectRatio: 1.0,
                    //           padding: const EdgeInsets.all(4.0),
                    //           mainAxisSpacing: 4.0,
                    //           crossAxisSpacing: 4.0,
                    //           children: <String>[
                    //             'https://via.placeholder.com/150',
                    //             'https://via.placeholder.com/150',
                    //             'https://via.placeholder.com/150',
                    //             'https://via.placeholder.com/150',
                    //             'https://via.placeholder.com/150',
                    //             'https://via.placeholder.com/150',

                    //           ].map((String url) {
                    //             return new GridTile(
                    //                 child: new Image.network(url, fit: BoxFit.cover));
                    //           }).toList()),
                    //       ),
                    //     ],
                    //   )
                    // ),

                    // Container(
                    //   alignment: Alignment.center,
                    //   child: Column(
                    //     // mainAxisAlignment: MainAxisAlignment.center,
                    //     children: <Widget>[
                    //       Container(
                    //         alignment: Alignment.center,
                    //         margin: EdgeInsets.only(top: 130, left: 40),
                    //         child: Row(
                    //           children: <Widget>[
                    //             Container(
                    //               alignment: Alignment.center,
                    //               margin: EdgeInsets.only(left: 40),
                    //               child: Align(
                    //                 alignment: Alignment.center,
                    //                 child: Text(
                    //                   "Billa",
                    //                   textAlign: TextAlign.center,
                    //                   style: TextStyle(
                    //                     fontSize: 24,
                    //                     fontWeight: FontWeight.bold,
                    //                     color: secondaryColor
                    //                   ),
                    //                 ),
                    //               )
                                          
                    //             ),
                    //             Container(
                    //               alignment: Alignment.center,
                    //               margin: EdgeInsets.only(left: 40),
                    //               child: Text(
                    //                 "Billa",
                    //                 style: TextStyle(
                    //                   fontSize: 24,
                    //                   fontWeight: FontWeight.bold,
                    //                   color: secondaryColor
                    //                 ),
                    //               ),        
                    //             )
                    //           ],
                    //         ),
                    //       ),
                    //       Container(
                    //         margin: EdgeInsets.only(top: 130, left: 40),
                    //         child: Row(
                    //           children: <Widget>[
                    //             Container(
                    //               margin: EdgeInsets.only(left: 40),
                    //               child: Text(
                    //                 "Cantik bgt",
                    //                 style: TextStyle(
                    //                   fontSize: 24,
                    //                   fontWeight: FontWeight.bold,
                    //                   color: secondaryColor
                    //                 ),
                    //               ),        
                    //             ),
                    //             Container(
                    //               margin: EdgeInsets.only(left: 40),
                    //               child: Text(
                    //                 "Anjay",
                    //                 style: TextStyle(
                    //                   fontSize: 24,
                    //                   fontWeight: FontWeight.bold,
                    //                   color: secondaryColor
                    //                 ),
                    //               ),        
                    //             )
                    //           ],
                    //         ),
                    //       ),  
                    //     ],
                    //   ),

                    // ),
                    // Container(
                    //   child: GridView.count(
                    //     crossAxisCount: 4,
                    //     childAspectRatio: 1.0,
                    //     padding: const EdgeInsets.all(4.0),
                    //     mainAxisSpacing: 4.0,
                    //     crossAxisSpacing: 4.0,
                    //     children: <String>[
                    //       "http://www.for-example.org/img/main/forexamplelogo.png",
                    //       "http://www.for-example.org/img/main/forexamplelogo.png",
                    //       "http://www.for-example.org/img/main/forexamplelogo.png",
                    //       "http://www.for-example.org/img/main/forexamplelogo.png"
                    //     ].map((String url) {
                    //       return GridTile(
                    //           child: Image.network(url, fit: BoxFit.cover));
                    //     }).toList()),
                    // ),

                    // expansion TILE
                    // ----------------------------------
                    // Container(
                    //   margin: EdgeInsets.symmetric(horizontal: 45.0, vertical: 40),
                    //   child: Column(
                    //     children: <Widget>[
                    //       Row(
                    //         children: <Widget>[
                    //           Expanded(
                    //             child: ExpansionTile(
                    //               tilePadding: EdgeInsets.symmetric(horizontal: 0),
                    //               backgroundColor: colorTemp3,
                    //               controlAffinity: ListTileControlAffinity.trailing,
                    //               // childrenPadding:
                    //               //     const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    //               expandedCrossAxisAlignment: CrossAxisAlignment.end,
                    //               maintainState: true,
                    //               title: Image.asset("assets/icons/Articles/Emergency Section.png"),
                    //               children: <Widget>[
                    //                 ListTile(
                    //                   title: Text('Polisi'),
                    //                   subtitle: Text('110'),
                    //                 ),
                    //                 ListTile(
                    //                   title: Text('Ambulans'),
                    //                   subtitle: Text('118 atau 119'),
                    //                 ),
                    //                 ListTile(
                    //                   title: Text('BASARNAS'),
                    //                   subtitle: Text('115'),
                    //                 ),
                    //               ],
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 40),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: FlatButton(
                                  // color: Colors.transparent,
                                  // splashColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0)),
                                  onPressed: (){
                                    Navigator.push(
                                      context, 
                                      MaterialPageRoute(
                                        builder: (BuildContext          context)=>Expansiontile()));
                                  },
                                  child: Image(image: AssetImage(emergency_banner)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Expansiontile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorTemp1,
      appBar: AppBar(
        backgroundColor: colorTemp1,
        centerTitle: true,
        title: Text(
          'Expansion Tile'
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: <Widget>[
            SizedBox(height:20.0),
            ListTile(
              textColor: colorTemp4,
              title: Text('Polisi'),
              subtitle: Text('110'),
            ),
            ListTile(
              textColor: colorTemp4,
              title: Text('Ambulans'),
              subtitle: Text('118 atau 119'),
            ),
            ListTile(
              textColor: colorTemp4,
              title: Text('Badan Nasional Pencarian dan Pertolongan'),
              subtitle: Text('115'),
            ),
            ListTile(
              textColor: colorTemp4,
              title: Text('Posko Bencana Alam'),
              subtitle: Text('129'),
            ),
            ListTile(
              textColor: colorTemp4,
              title: Text('Perusahaan Listrik Negara (PLN)'),
              subtitle: Text('123'),
            ),
            ListTile(
              textColor: colorTemp4,
              title: Text('Pemadam Kebakaran'),
              subtitle: Text('113 atau 1131'),
            ),
            ListTile(
              textColor: colorTemp4,
              title: Text('Nomor Darurat Telepon Seluler dan Satelit'),
              subtitle: Text('112'),
            ),
            ListTile(
              textColor: colorTemp4,
              title: Text('Pencegahan Bunuh Diri'),
              subtitle: Text('(021)7256526, (021)7257826, (021)7221810'),
            ),
            ListTile(
              textColor: colorTemp4,
              title: Text('Konseling masalah kejiwaan Direktorat Bina Pelayanan Kesehatan Jiwa Kemenkes RI'),
              subtitle: Text('500-454'),
            ),
          ],
        ),
      ),
    );
  }
}