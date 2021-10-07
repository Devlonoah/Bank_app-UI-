import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shitshow/app_size_functions.dart';
import 'package:shitshow/constants.dart';
import 'package:shitshow/page/cards/widget/barrel.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardPage extends StatelessWidget {
  static String id = 'CardPage';
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardPageBody();
  }
}

class CardPageBody extends StatelessWidget {
  const CardPageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLOR_TOTAL_BLACK,
      appBar: AppBar(
        leading: IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            addVerticalSpace(0),
            HeaderAndCardCount(),
            addVerticalSpace(20),
            CreditCardWidget(),
            addVerticalSpace(20),
            SubHeaderWithButton(),
            addVerticalSpace(20),
            Column(
              children: [
                TransactionCard(icon: FontAwesomeIcons.hamburger, label: 'KFC'),
                addVerticalSpace(10.0.h),
                TransactionCard(icon: FontAwesomeIcons.paypal, label: 'Paypal'),
                addVerticalSpace(10.0.h),
                TransactionCard(
                    icon: FontAwesomeIcons.wrench, label: 'Car Repair'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SubHeaderWithButton extends StatelessWidget {
  const SubHeaderWithButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 13.0.w),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text('Recent Transactions', style: subHeaderTextStyle),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              backgroundColor: COLOR_CARD,
              minimumSize: Size(35.w, 10.h),
              fixedSize: Size(70.w, 35.h),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r))),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Text('see more', style: subtitleTextStyle2),
          ),
        )
      ]),
    );
  }
}
