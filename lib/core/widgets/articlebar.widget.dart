import 'package:bantuone/core/constants/colors.dart';
import 'package:bantuone/core/constants/image_path.dart';
import 'package:flutter/material.dart';
import 'package:bantuone/features/home/view/home_view.dart';

class CustomArticleBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: darkBlue,
      // shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.vertical(bottom: Radius.circular(64))),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              height: kToolbarHeight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    padding: EdgeInsets.all(16),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomeView()),
                      );
                    },
                    icon: Image.asset(arrow_back),
                    splashRadius: 20.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 230),
                    child: Text(
                      "Feed Article",
                      style: const TextStyle(fontSize: 18, color: white),
                    ),
                  )
                ],
              ),
            ),
            // Container(
            //   child: Text(
            //     "data",
            //     style: TextStyle(
            //       color: white
            //       ),
            //   ),
            // ),
            // Container(
            //   height: 50,
            //   width: 50,
            //   decoration: BoxDecoration(
            //     color: white
            //   ),
            // )

            // Expanded(
            //   child: InkWell(
            //     onTap: () => null,
            //     child: Row(
            //       children: [

            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 10);
}