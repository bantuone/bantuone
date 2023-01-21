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
        // listview
        body: ListView(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              // padding: const EdgeInsets.only(top: 94),
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
                  // Container(
                  //   alignment: Alignment.centerLeft,
                  //   padding: const EdgeInsets.only(top: 24, left: 18, right: 18, bottom: 8),
                  //   child: RichText(
                  //     text: TextSpan(
                  //       text: 'Hai, BantuOne Friends! Tidak ada yang mengetahui kapan atau bagaimana keadaan darurat akan terjadi. Keadaan yang dapat beresiko dalam merusak lingkungan sekitar ataupun membahayakan nyawa seseorang, akan lebih baik jika dapat segera ditangani, serta untuk meminimalisir kerusakan yang terjadi. Oleh karena itu, sangat penting untuk mengetahui setidaknya beberapa hal yang perlu dilakukan saat memberikan bantuan pertama kepada seseorang yang sedang membutuhkannya.',
                  //       style: TextStyle(color: darkBlue),
                  //     )
                  //     ),
                  // ),
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

                  // -------- list start -----------
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 8, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: '1. Bantuan Pertama untuk Kulit Terbakar',
                        style: TextStyle(color: darkBlue, fontWeight: FontWeight.bold, fontSize: 20),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 8, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: 'Penyebab yang sering terjadi untuk luka kulit terbakar adalah dengan tanpa sengaja menyentuh permukaan benda yang panas ataupun minyak yang mendidih. Bantuan pertama yang dapat kamu berikan adalah :',
                        style: TextStyle(color: darkBlue),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 8, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: '- Hentikan proses bakar\n- Dinginkan area kulit yang terbakar dengan kompres dingin selama 15 menit\n- Tutupin area kulit yang terbakar setelah dikompres',
                        style: TextStyle(color: darkBlue),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 8, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: '2. Bantuan Pertama untuk Kulit Memar',
                        style: TextStyle(color: darkBlue, fontWeight: FontWeight.bold, fontSize: 20),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 8, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: 'Luka kulit memar dapat terjadi akibat benturan atau cedera yang terjadi pada permukaan kulit. Benturan atau cedera ini mengakibatkan pembuluh darah yang berada pada area permukaan kulit menjadi pecah, serta membuat darah keluar dan mengisi jaringan di sekitarnya. Bantuan pertama yang dapat kamu berikan adalah :',
                        style: TextStyle(color: darkBlue),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 8, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: '- Dinginkan area kulit yang memar dengan kompres dingin selama 15 menit\n- Oleskan obat pereda nyeri pada area kulit yang memar',
                        style: TextStyle(color: darkBlue),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 8, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: '3. Bantuan Pertama untuk Pendarahan akibat sayatan',
                        style: TextStyle(color: darkBlue, fontWeight: FontWeight.bold, fontSize: 20),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 8, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: 'Luka akibat sayatan atau terpotong biasanya terjadi saat korban terluka oleh benda seperti pisau atau benda tajam lainnya. Luka yang terjadi akibat sayatan ini harus segera ditangani sebelum terjadi infeksi. Bantuan yang dapat kamu berikan untuk menangani luka sayatan adalah :',
                        style: TextStyle(color: darkBlue),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 8, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: '- Hentikan pendarahan pada area yang tersayat\n- Segera cuci luka dengan air bersih\n- Oleskan salep antiseptik pada luka',
                        style: TextStyle(color: darkBlue),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 8, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: '4. Bantuan Pertama untuk Luka Tertusuk Serpihan',
                        style: TextStyle(color: darkBlue, fontWeight: FontWeight.bold, fontSize: 20),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 8, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: 'Luka akibat tertusuk serpihan benda asing biasanya disebabkan oleh korban yang tidak sadar adanya benda kecil yang berbentuk tajam menusuk korban. Bantuan yang bisa diberikan untuk luka tertusuk serpihan kecil adalah :',
                        style: TextStyle(color: darkBlue),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 8, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: '- Mengeluarkan serpihan benda asing yang menusuk korban\n- Bersihkan area luka yang tertusuk dengan air bersih',
                        style: TextStyle(color: darkBlue),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 8, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: '5. Bantuan Pertama untuk Tersedak atau Menelan Benda Asing',
                        style: TextStyle(color: darkBlue, fontWeight: FontWeight.bold, fontSize: 20),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 8, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: 'Korban yang tersedak karena tanpa sengaja menelan benda asing, harus segera ditangani karena beresiko membahayakan nyawa korban karena kesulitan bernafas. Bantuan yang dapat diberikan untuk korban tersedak adalah :',
                        style: TextStyle(color: darkBlue),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 8, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: '- Berikan dorongan dari perut ke arah tenggorokan\n -Kepalkan satu tangan dan taruh di atas perut, lalu tekan perut menggunakan tangan satunya',
                        style: TextStyle(color: darkBlue),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 8, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: '6. Bantuan Pertama untuk Keseleo atau Kram',
                        style: TextStyle(color: darkBlue, fontWeight: FontWeight.bold, fontSize: 20),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 8, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: 'Keseleo atau kram biasanya terjadi saat kita sedang melakukan aktivitas. Bantuan yang dapat diberikan untuk orang yang mengalami cedera keseleo atau kram adalah :',
                        style: TextStyle(color: darkBlue),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 8, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: '- Mencoba untuk meluruskan bagian tubuh yang keseleo/kram\n- Mengompres bagian tubuh yang keseleo/kram dengan kompres dingin',
                        style: TextStyle(color: darkBlue),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 8, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: '7. Bantuan Pertama untuk Korban Tenggelam',
                        style: TextStyle(color: darkBlue, fontWeight: FontWeight.bold, fontSize: 20),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 8, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: 'Tenggelam sangat membahayakan bagi nyawa korban karena apabila terlalu lama, air bisa masuk melalui hidung atau mulut, dan akan memasuki paru-paru dan membuat korban kesulitan untuk bernafas. Bantuan pertama yang dapat diberikan untuk korban tenggelam adalah :',
                        style: TextStyle(color: darkBlue),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 8, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: '- Mengeluarkan korban dari dalam air\n- Cek pernapasan korban\n- Melakukan nafas buatan, jepit hidung korban dan tempelkan mulut anda dengan posisi terkatup diatas mulut korban, lalu tiupkan udara sekali setiap 1-2 detik\n -Melakukan CPR, tempatkan salah satu telapak tangan anda di dada korban dan satu lagi di atasnya. Lalu lakukan 30 kompresi dada dengan kecepatan 1 kompresi setiap 1-2 detik',
                        style: TextStyle(color: darkBlue),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 8, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: '8. Bantuan Pertama untuk Korban Pingsan atau Tidak Sadarkan Diri',
                        style: TextStyle(color: darkBlue, fontWeight: FontWeight.bold, fontSize: 20),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 8, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: 'Korban pingsan dapat diakibatkan oleh banyak penyebab, salah satunya adalah kepala korban terbentur atau korban merasakan pusing. Bantuan yang dapat diberikan kepada korban yang tidak sadarkan diri adalah :',
                        style: TextStyle(color: darkBlue),
                      )
                      ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 8, left: 18, right: 18, bottom: 8),
                    child: RichText(
                      text: TextSpan(
                        text: 'Cek pernapasan korban\n- Melakukan CPR, tempatkan salah satu telapak tangan anda di dada korban dan satu lagi di atasnya. Lalu lakukan 30 kompresi dada dengan kecepatan 1 kompresi setiap 1-2 detik\n- Menelepon ambulans',
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