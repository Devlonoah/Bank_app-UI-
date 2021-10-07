import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shitshow/app_size_functions.dart';
import 'package:shitshow/constants.dart';

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
            addVerticalSpace(20),
            HeaderAndCardCount(),
            addVerticalSpace(20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 20.h),
              decoration: BoxDecoration(
                  color: COLOR_PURPLE,
                  borderRadius: BorderRadius.circular(15.r)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '4562 1122 4595 7852',
                    style:
                        TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w700),
                  ),
                  addVerticalSpace(20),
                  Text('Ghulam',
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w500)),
                  addVerticalSpace(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Expiry Date',
                            style: subtitleTextStyle2,
                          ),
                          addVerticalSpace(5),
                          Text(
                            '24/2021',
                            style: subtitleTextStyle.copyWith(
                                fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                      Image.asset('assets/credit_card_logo/mastercard.png')
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HeaderAndCardCount extends StatelessWidget {
  const HeaderAndCardCount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Your Cards', style: subHeaderTextStyle),
            Text('You have 3 Active Cards', style: subtitleTextStyle2)
          ],
        ),
        CircleAvatar(
          backgroundColor: COLOR_SUN_YELLOW,
          child: Icon(Icons.add),
          radius: 20.r,
        )
      ],
    );
  }
}
