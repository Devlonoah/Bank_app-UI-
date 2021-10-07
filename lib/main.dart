import 'package:fl_chart/fl_chart.dart' as ch;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shitshow/app_routes.dart';
import 'package:shitshow/constants.dart';

import 'package:shitshow/page/welcome/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        routes: appRoutes,
        theme: ThemeData.dark().copyWith(
            primaryColor: Colors.black, scaffoldBackgroundColor: COLOR_BLACK),
        home: WelcomePage(),
      ),
    );
  }
}
