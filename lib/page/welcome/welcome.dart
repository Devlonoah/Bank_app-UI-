import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shitshow/app_size_functions.dart';
import 'package:shitshow/constants.dart';
import 'package:shitshow/page/home/home.dart';

class WelcomePage extends StatelessWidget {
  static String id = 'WelcomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            stops: [
              0.1,
              1.0,
            ],
            colors: [
              Color(0xFF20004e),
              Color(0xFF2a00b8),

              // COLOR_DEEP_PURPLE,
              // Colors.purple.shade900,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text('Welcome',
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700,
                  )),
            ),
            addVerticalSpace(15),
            Text(
              'Login to start using your account',
              textAlign: TextAlign.center,
              style: subtitleTextStyle,
            ),
            addVerticalSpace(15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: TextButton(
                onPressed: () => _navigateToHome(context),
                style: TextButton.styleFrom(
                    backgroundColor: COLOR_PURPLE_SUN,
                    minimumSize: Size(100.w, 40.h),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp),
                ),
              ),
            ),
            addVerticalSpace(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account ?',
                  style: subtitleTextStyle.copyWith(
                      fontSize: 15.sp, fontWeight: FontWeight.w300),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Signup',
                    style: subtitleTextStyle.copyWith(
                        color: Colors.white, fontSize: 15.sp),
                  ),
                ),
              ],
            ),
            addVerticalSpace(5),
          ],
        ),
      ),
    );
  }

  _navigateToHome(BuildContext context) {
    Navigator.pushNamed(context, HomePage.id);
  }
}
