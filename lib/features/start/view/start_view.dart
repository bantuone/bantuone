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
                      child: Text("Selamat Datang di Bantuone", 
                      style: TextStyle(color: white)
                      ),
                    ),
                    Container(
                      width: 300.w,
                      child: Text("Kesalamatan dan kenyamanan kamu merupakan prioritas nomor 1 kami!", 
                      style: TextStyle(color: white)
                      ),
                    ),

                    SizedBox(height: 100.h),

                    Container(
                      height: 200.h,
                      width: 200.w,
                      child: Image(image: AssetImage(logo)),
                    ),
                    
                    SizedBox(height: 100.h),

                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 42.h,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                        onPressed: () {
                          // Navigator.pushNamed(
                          //   context, 
                          //   register,
                          //   );
                          showModalBottomSheet(
                            context: context, 
                            builder: ((context) => Center(
                              child: ElevatedButton(
                                onPressed: (() => Navigator.pop(context)),
                                child: Text("close")),
                            ))
                          );
                        },
                        child: Text("Register",
                        style: TextStyle(color: black),
                        ),
                      ),
                    ),

                    SizedBox(height: 50.h),

                    Container(
                      child: Text("Sudah memiliki akun?", 
                      style: TextStyle(color: white)
                      ),
                    ),

                    Container(
                      child: TextButton(
                        onPressed: (() {
                          // Navigator.pushNamed(
                          //   context, 
                          //   login
                          //   );
                          showModalBottomSheet(
                            context: context, 
                            builder: ((context) => Center(
                              child: ElevatedButton(
                                onPressed: (() => Navigator.pop(context)),
                                child: Text("close")),
                            ))
                          );
                        }), 
                        child: Text("Masuk", 
                        style: TextStyle(color: white)
                        ),
                      ),
                    ),
                  ],
                )
              ],
            );
          }
          ),
        ),
      ),
    );
  }
}