import 'package:bantuone/core/constants/colors.dart';
import 'package:bantuone/core/constants/image_path.dart';
import 'package:bantuone/core/widgets/currLoct.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class customArticle extends StatelessWidget {
  List<String> imgList = [articleBanner1, articleBanner2, articleBanner3];

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
                        "Artikel Pertolongan Pertama",
                        style: TextStyle(
                            fontSize: 18,
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
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(54),
                      bottomRight: Radius.circular(54))),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  CarouselSlider(
                    options: CarouselOptions(
                        height: 200,
                        enableInfiniteScroll: true,
                        //autoPlay: true,
                        aspectRatio: 2,
                        viewportFraction: 0.9,
                        initialPage: 2,
                        enlargeCenterPage: true),
                    carouselController: buttonCarouselController,
                    items: imgList
                        .map((item) => Container(
                            padding: const EdgeInsets.only(left: 12, right: 12),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image(image: AssetImage(item)),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 120, left: 12, right: 12),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Hal-hal yang perlu dilakukan saat memberikan bantuan pertama",
                                        style: TextStyle(
                                            fontSize: 11,
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
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      border: Border.all(color: darkBlue),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          padding: new EdgeInsets.all(0.0),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        currLoct(type: "Rumah Sakit",)));
                          },
                          icon: Image.asset(rs)),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Rumah Sakit",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: darkBlue),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      border: Border.all(color: darkBlue),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          padding: new EdgeInsets.all(0.0),
                          onPressed: () => Scaffold.of(context).openDrawer(),
                          icon: Image.asset(damkar)),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Damkar",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: darkBlue),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      border: Border.all(color: darkBlue),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          padding: new EdgeInsets.all(0.0),
                          onPressed: () => Scaffold.of(context).openDrawer(),
                          icon: Image.asset(bengkel)),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Bengkel",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: darkBlue),
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          textColor: Colors.white,
          elevation: 8.0,
          child: Container(
            height: 150,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(emergency), fit: BoxFit.fill),
            ),
            child: Center(
              //padding: const EdgeInsets.all(0.0),
              child: Text(
                "Nomor Darurat\n(Emergency Call)",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold, color: white),
              ),
            ),
          ),
          // ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => Expansiontile()));
          },
        ),
      ],
    ));
  }
}

class Expansiontile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: darkBlue,
        centerTitle: true,
        title: Text('Call Center',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: white)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ListTile(
                textColor: darkBlue,
                title: Text('Polisi',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: darkBlue)),
                subtitle: Text('110'),
                trailing: TextButton(
                  onPressed: (() {
                    FlutterPhoneDirectCaller.callNumber('+110');
                    //launch('tel:+110');
                  }),
                  child: Text("Call", style: TextStyle(color: green)),
                  style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: green))),
                )),
            ListTile(
                textColor: darkBlue,
                title: Text('Ambulans',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: darkBlue)),
                subtitle: Text('118 atau 119'),
                trailing: TextButton(
                  onPressed: (() {}),
                  child: Text("Call", style: TextStyle(color: green)),
                  style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: green))),
                )),
            ListTile(
                textColor: darkBlue,
                title: Text('BASARNAS',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: darkBlue)),
                subtitle: Text('115'),
                trailing: TextButton(
                  onPressed: (() {}),
                  child: Text("Call", style: TextStyle(color: green)),
                  style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: green))),
                )),
            ListTile(
                textColor: darkBlue,
                title: Text('Posko Bencana Alam',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: darkBlue)),
                subtitle: Text('129'),
                trailing: TextButton(
                  onPressed: (() {}),
                  child: Text("Call", style: TextStyle(color: green)),
                  style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: green))),
                )),
            ListTile(
                textColor: darkBlue,
                title: Text('PLN',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: darkBlue)),
                subtitle: Text('123'),
                trailing: TextButton(
                  onPressed: (() {}),
                  child: Text("Call", style: TextStyle(color: green)),
                  style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: green))),
                )),
            ListTile(
                textColor: darkBlue,
                title: Text('DAMKAR',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: darkBlue)),
                subtitle: Text('113 atau 1131'),
                trailing: TextButton(
                  onPressed: (() {}),
                  child: Text("Call", style: TextStyle(color: green)),
                  style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: green))),
                )),
            ListTile(
                textColor: darkBlue,
                title: Text('Seluler dan Satelit',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: darkBlue)),
                subtitle: Text('112'),
                trailing: TextButton(
                  onPressed: (() {}),
                  child: Text("Call", style: TextStyle(color: green)),
                  style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: green))),
                )),
            ListTile(
                textColor: darkBlue,
                title: Text('Pencegahan Bunuh Diri',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: darkBlue)),
                subtitle: Text('(021)7256526, (021)7257826, (021)7221810'),
                trailing: TextButton(
                  onPressed: (() {}),
                  child: Text("Call", style: TextStyle(color: green)),
                  style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: green))),
                )),
            ListTile(
                textColor: darkBlue,
                title: Text('Konseling Kejiwaan',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: darkBlue)),
                subtitle: Text('(021)7256526, (021)7257826, (021)7221810'),
                trailing: TextButton(
                  onPressed: (() {}),
                  child: Text("Call", style: TextStyle(color: green)),
                  style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: green))),
                )),
          ],
        ),
      ),
    );
  }
}
