import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shitshow/app_size_functions.dart';
import 'package:shitshow/constants.dart';
import 'package:shitshow/page/cards/cards.dart';
import 'package:shitshow/page/drawer/drawer_widget.dart';
import 'package:shitshow/page/home/widget/barchat_widgets.dart';
import 'package:shitshow/page/home/widget/border_box.dart';

class HomePage extends StatelessWidget {
  static String id = 'HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeBody();
  }
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0.4, end: 1),
      duration: Duration(milliseconds: 500),
      curve: Curves.easeIn,
      builder: (context, double value, child) {
        return Opacity(opacity: value, child: child);
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: DrawerWidget(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: CircleAvatar(
                radius: 18.r,
                backgroundColor: COLOR_GREY_PINK,
              ),
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              addVerticalSpace(10),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Your Balance',
                    style: subHeaderTextStyle,
                  )),
              addVerticalSpace(20),
              BalanceCard(),
              addVerticalSpace(20),
              ActionButtons(),
              addVerticalSpace(20),
              Expanded(child: CustomBarChart()),
            ],
          ),
        ),
      ),
    );
  }
}

class ActionButtons extends StatelessWidget {
  const ActionButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      BorderBox(
        icon: FontAwesomeIcons.arrowUp,
        iconColor: COLOR_PINK,
        label: 'Send',
      ),
      BorderBox(
        icon: FontAwesomeIcons.arrowDown,
        iconColor: Colors.green,
        label: 'Recieve',
      ),
      BorderBox(
        icon: FontAwesomeIcons.coins,
        iconColor: Colors.amber,
        label: 'Loan',
      ),
      BorderBox(
          icon: FontAwesomeIcons.cloudversify,
          iconColor: COLOR_PURPLE_SUN,
          label: 'Top up'),
    ]);
  }
}

class BalanceCard extends StatelessWidget {
  const BalanceCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, CardPage.id);
      },
      child: Container(
        decoration: BoxDecoration(
            color: COLOR_CARD, borderRadius: BorderRadius.circular(15.r)),
        child: Padding(
          padding: EdgeInsets.all(30.0.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('June 14,2021',
                  style: subtitleTextStyle.copyWith(fontSize: 11.sp)),
              addVerticalSpace(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\$27,802.05',
                    style:
                        TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w700),
                  ),
                  Row(children: [
                    Text(
                      '15%',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 14.sp),
                    ),
                    addHorizontalSpace(5),
                    Icon(Icons.arrow_upward, size: 20.sp),
                  ])
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
