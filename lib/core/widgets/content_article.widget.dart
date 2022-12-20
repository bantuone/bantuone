import 'package:bantuone/core/constants/colors.dart';
import 'package:bantuone/core/constants/image_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bantuone/features/home/view/home_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:bantuone/features/feed_article/view/feed_article_view.dart';

class ArticleFeeds{
  String? title;
  String? images;
  String? writer;
  int? time;
  String? content;

// added '?'
  
  ArticleFeeds({this.title, this.images, this.writer, this.time, this.content});
  // can also add 'required' keyword
}

class contentArticle extends StatelessWidget {
  List<String> imagesAsset = [articleBanner1, articleBanner2, articleBanner3];

  List<ArticleFeeds> articleFeeds = [
    ArticleFeeds(
      title: "Hal-hal yang perlu dilakukan saat memberikan bantuan pertama!",
      images: "assets/images/article1.png",
      writer: "Rifqi",
      time: 1
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 94),
              alignment: Alignment.centerLeft,
              child: Column(
                children: <Widget>[
                  FittedBox(
                    child: Image.asset(
                      '${articleFeeds[0].images}',
                      width: MediaQuery.of(context).size.width,
                    ),
                    fit: BoxFit.fill,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 18, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: '${articleFeeds[0].title}',
                        style: TextStyle(color: darkBlue, fontSize: 36, fontWeight: FontWeight.bold ),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 4, left: 18, right: 18, bottom: 12),
                    child: RichText(
                      text: TextSpan(
                        text: '${articleFeeds[0].writer}, ${articleFeeds[0].time} menit membaca',
                        style: TextStyle(color: darkBlue),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 24, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: 'Hai, BantuOne Friends! Tidak ada yang mengetahui kapan atau bagaimana keadaan darurat akan terjadi. Keadaan yang dapat beresiko dalam merusak lingkungan sekitar ataupun membahayakan nyawa seseorang, akan lebih baik jika dapat segera ditangani, serta untuk meminimalisir kerusakan yang terjadi. Oleh karena itu, sangat penting untuk mengetahui setidaknya beberapa hal yang perlu dilakukan saat memberikan bantuan pertama kepada seseorang yang sedang membutuhkannya.',
                        style: TextStyle(color: darkBlue),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 24, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: 'Hai, BantuOne Friends! Tidak ada yang mengetahui kapan atau bagaimana keadaan darurat akan terjadi. Keadaan yang dapat beresiko dalam merusak lingkungan sekitar ataupun membahayakan nyawa seseorang, akan lebih baik jika dapat segera ditangani, serta untuk meminimalisir kerusakan yang terjadi. Oleh karena itu, sangat penting untuk mengetahui setidaknya beberapa hal yang perlu dilakukan saat memberikan bantuan pertama kepada seseorang yang sedang membutuhkannya.',
                        style: TextStyle(color: darkBlue),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 8, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: 'Berikut merupakan langkah-langkah yang dapat kamu lakukan ketika memberikan bantuan pertama kepada korban sesuai dengan jenisnya!',
                        style: TextStyle(color: darkBlue),
                      )
                      ),
                  ),
                ],
              ),

              // child: ListView.builder(
              //   padding: const EdgeInsets.only(top: 94),
              //   itemCount: articleFeeds.length,
              //   itemBuilder: (BuildContext context, int index) {
              //     return ElevatedButton(
              //       onPressed: () {
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(builder: (context) => const HomeView()),
              //         );
              //       }, 
              //       style: ElevatedButton.styleFrom(
              //         padding: EdgeInsets.zero,
              //         minimumSize: Size(50, 30),
              //         tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              //         alignment: Alignment.centerLeft),
              //       child: Stack(
              //         children: [
              //           // Image.asset('${articleFeeds[index].images}'),
              //           FittedBox(
              //             child: Image.asset('${articleFeeds[index].images}'),
              //             fit: BoxFit.fill,
              //           ),
              //           Container(
              //             margin: const EdgeInsets.only(
              //                 top: 100, left: 12, right: 12),
              //             child: Column(
              //               children: <Widget>[
              //                 Text(
              //                   '${articleFeeds[index].title}',
              //                   style: TextStyle(
              //                       fontSize: 20,
              //                       fontWeight: FontWeight.bold,
              //                       color: white),
              //                 ),
              //                 Text(
              //                   '${articleFeeds[index].writer}, estimasi baca ${articleFeeds[index].time} menit',
              //                   style: TextStyle(
              //                       fontSize: 12,
              //                       fontWeight: FontWeight.normal,
              //                       color: white),
              //                 ),
              //               ],
              //             ),
              //           )
              //         ],
              //       ));
              //   }
              // ), 
            ),
            
          ],
    ));
  }
}