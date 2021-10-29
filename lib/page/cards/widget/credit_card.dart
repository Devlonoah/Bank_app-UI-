import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app_size_functions.dart';
import '../../../constants.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 20.h),
      decoration: BoxDecoration(
          color: COLOR_PURPLE, borderRadius: BorderRadius.circular(15.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '4562 1122 4595 7852',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w400),
          ),
          addVerticalSpace(35),
          Text('Opeyemi',
              style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.0)),
          addVerticalSpace(0),
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
                    style:
                        subtitleTextStyle.copyWith(fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              Image.asset('assets/credit_card_logo/mastercard.png',
                  height: 60.w, width: 60.w)
            ],
          )
        ],
      ),
    );
  }
}
