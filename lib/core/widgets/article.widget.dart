import 'package:bantuone/core/constants/colors.dart';
import 'package:bantuone/core/constants/image_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class customArticle extends StatelessWidget {
  List<String> imagesAsset = [articleBanner1, articleBanner2, articleBanner3];

  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: black,
        body: Column(
      children: <Widget>[
        Container(
          color: darkBlue,
          height: 170,
          //margin: EdgeInsets.only(bottom: 20),
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
                            color: white),
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
                            color: white),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        
        Stack(
          children: [
            Container(
              height: 50,
              //color: darkBlue,
              decoration: BoxDecoration(
                color: darkBlue,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(64), bottomRight: Radius.circular(64))
              ),
            ),
 Container(
          //color: darkBlue,
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(64),bottomRight: Radius.circular(64))
          // ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CarouselSlider(
                options: CarouselOptions(
                  height: 150.0,
                  enableInfiniteScroll: true,
                ),
                carouselController: buttonCarouselController,
                items: imagesAsset
                    .map((item) => Container(
                        padding: const EdgeInsets.only(left: 12),
                        child: Stack(
                          children: [
                            Image(image: AssetImage(articleBanner1)),
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 108, left: 12, right: 12),
                              child: Column(
                                children: [
                                  Text(
                                    "Hal-hal yang perlu dilakukan saat memberikan bantuan pertama",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: white),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )))
                    .toList(),
              ),
            ],
          ),
        ),
          ],
        ),

       

        // Container(
        //   margin: EdgeInsets.symmetric(vertical: 40),
        //   child: Column(
        //     children: <Widget>[
        //       Row(
        //         children: <Widget>[
        //           Expanded(
        //             child: IconButton(
        //               // color: Colors.transparent,
        //               // splashColor: Colors.transparent,

        //               onPressed: (){
        //                 Navigator.push(
        //                   context,
        //                   MaterialPageRoute(
        //                     builder: (BuildContext context)=>Expansiontile()));
        //               },
        //               icon: Image(image: AssetImage(articleBanner2)),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // )
      ],
    ));
  }
}

// class Expansiontile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: black,
//       appBar: AppBar(
//         backgroundColor: white,
//         centerTitle: true,
//         title: Text(
//           'Expansion Tile'
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 30.0),
//         child: Column(
//           children: <Widget>[
//             SizedBox(height:20.0),
//             ListTile(
//               textColor: darkBlue,
//               title: Text('Polisi'),
//               subtitle: Text('110'),
//             ),
//             ListTile(
//               textColor: darkBlue,
//               title: Text('Ambulans'),
//               subtitle: Text('118 atau 119'),
//             ),
//             ListTile(
//               textColor: darkBlue,
//               title: Text('Badan Nasional Pencarian dan Pertolongan'),
//               subtitle: Text('115'),
//             ),
//             ListTile(
//               textColor: darkBlue,
//               title: Text('Posko Bencana Alam'),
//               subtitle: Text('129'),
//             ),
//             ListTile(
//               textColor: darkBlue,
//               title: Text('Perusahaan Listrik Negara (PLN)'),
//               subtitle: Text('123'),
//             ),
//             ListTile(
//               textColor: darkBlue,
//               title: Text('Pemadam Kebakaran'),
//               subtitle: Text('113 atau 1131'),
//             ),
//             ListTile(
//               textColor: darkBlue,
//               title: Text('Nomor Darurat Telepon Seluler dan Satelit'),
//               subtitle: Text('112'),
//             ),
//             ListTile(
//               textColor: darkBlue,
//               title: Text('Pencegahan Bunuh Diri'),
//               subtitle: Text('(021)7256526, (021)7257826, (021)7221810'),
//             ),
//             ListTile(
//               textColor: darkBlue,
//               title: Text('Konseling masalah kejiwaan Direktorat Bina Pelayanan Kesehatan Jiwa Kemenkes RI'),
//               subtitle: Text('500-454'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
