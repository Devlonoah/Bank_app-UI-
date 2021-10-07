import 'package:flutter/cupertino.dart';
import 'package:shitshow/page/cards/cards.dart';
import 'package:shitshow/page/home/home.dart';
import 'package:shitshow/page/welcome/welcome.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  HomePage.id: (context) => HomePage(),
  WelcomePage.id: (context) => WelcomePage(),
  CardPage.id: (context) => CardPage()
};
