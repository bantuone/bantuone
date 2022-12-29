import 'package:bantuone/auth_service.dart';
import 'package:bantuone/core/constants/colors.dart';
import 'package:bantuone/core/constants/image_path.dart';
import 'package:bantuone/core/route/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartView extends StatelessWidget {
  const StartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue,
      body: Container(
        child: Center(
          child: Consumer(builder: (ctx, vm, _) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 100.h),
                    Container(
                      child: Text("Selamat Datang di BantuOne",
                          style: TextStyle(
                              color: white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      width: 300.w,
                      child: Text(
                          "Keselamatan dan kenyamanan anda merupakan prioritas nomor 1 kami!",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: greyBlue, fontWeight: FontWeight.w500)),
                    ),
                    SizedBox(height: 100.h),
                    Container(
                      height: 200.h,
                      width: 200.w,
                      child: Image(image: AssetImage(logo)),
                    ),
                    SizedBox(height: 200.h),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 42.h,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        onPressed: () {
                          AuthService().signInWithGoogle();
                        },
                        child: Text(
                          "Masuk",
                          style: TextStyle(
                              color: black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(height: 50.h),
                  ],
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
