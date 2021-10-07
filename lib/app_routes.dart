import 'package:flutter/cupertino.dart';

import 'page/cards/cards.dart';
import 'page/home/home.dart';
import 'page/welcome/welcome.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  HomePage.id: (context) => HomePage(),
  WelcomePage.id: (context) => WelcomePage(),
  CardPage.id: (context) => CardPage()
};
