import 'package:bantuone/core/constants/colors.dart';
import 'package:bantuone/core/constants/image_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bantuone/features/home/view/home_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:bantuone/features/feed_article/view/feed_article_view.dart';
import 'package:bantuone/features/content_article/view/content_article_view.dart';

class ArticleFeeds{
  String? title;
  String? images;
  String? writer;
  int? time;

// added '?'

  ArticleFeeds({this.title, this.images, this.writer, this.time});
  // can also add 'required' keyword
}

class feedArticle extends StatelessWidget {
  List<String> imagesAsset = [articleBanner1, articleBanner2, articleBanner3];

  List<ArticleFeeds> articleFeeds = [
    ArticleFeeds(
      title: "Hal-hal yang perlu dilakukan saat memberikan bantuan pertama",
      images: "assets/images/article1.png",
      writer: "Rifqi",
      time: 1
    ),
    ArticleFeeds(
      title: "Berikut 5 hal yang harus segera dilakukan ketika melihat/mengalami kecelakaan",
      images: "assets/images/article2.png",
      writer: "Rifqi",
      time: 2
    ),
    ArticleFeeds(
      title: "Hindari melakukan 5 hal ini saat terjadi kebakaran",
      images: "assets/images/article3.png",
      writer: "Rifqi",
      time: 3
    ),
    ArticleFeeds(
      title: "Hal-hal yang perlu dilakukan saat memberikan bantuan pertama",
      images: "assets/images/article1.png",
      writer: "Rifqi",
      time: 4
    ),
    ArticleFeeds(
      title: "Berikut 5 hal yang harus segera dilakukan ketika melihat/mengalami kecelakaan",
      images: "assets/images/article2.png",
      writer: "Rifqi",
      time: 5
    ),
    ArticleFeeds(
      title: "Hindari melakukan 5 hal ini saat terjadi kebakaran",
      images: "assets/images/article3.png",
      writer: "Rifqi",
      time: 6
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: black,
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 90),
                itemCount: articleFeeds.length,
                itemBuilder: (BuildContext context, int index) {
                  return ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ContentArticleView()),
                      );
                    }, 
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size(50, 30),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      alignment: Alignment.centerLeft),
                    child: Stack(
                      children: [
                        // Image.asset('${articleFeeds[index].images}'),
                        FittedBox(
                          child: Image.asset('${articleFeeds[index].images}'),
                          fit: BoxFit.fill,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 100, left: 12, right: 12),
                          child: Column(
                            children: <Widget>[
                              Text(
                                '${articleFeeds[index].title}',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: white),
                              ),
                              Text(
                                '${articleFeeds[index].writer}, estimasi baca ${articleFeeds[index].time} menit',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: white),
                              ),
                            ],
                          ),
                        )
                      ],
                    ));
                }
              ),
            ),

          ],
    ));
  }
}