import 'package:bantuone/core/constants/colors.dart';
import 'package:bantuone/core/constants/image_path.dart';
import 'package:bantuone/core/widgets/articlebar.widget.dart';
import 'package:bantuone/core/widgets/content_article.widget.dart';
import 'package:bantuone/core/widgets/drawer.widget.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:bantuone/auth_service.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentArticleView extends StatelessWidget {
  const ContentArticleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      endDrawer: Drawer(
        child: CustomDrawer(),
      ),
      appBar: CustomArticleBar(),
      body: contentArticle(),
    );
  }
}