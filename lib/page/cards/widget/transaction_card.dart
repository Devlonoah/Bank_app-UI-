import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app_size_functions.dart';
import '../../../constants.dart';

class TransactionCard extends StatelessWidget {
  final IconData icon;

  final String label;
  const TransactionCard({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(

        // margin: EdgeInsets.symmetric(vertical: 7.h),
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.h),
        decoration: BoxDecoration(
            color: COLOR_CARD, borderRadius: BorderRadius.circular(15.r)),
        // child: ListTile(
        //   leading: Icon(
        //     FontAwesomeIcons.hamburger,
        //     size: 26.r,
        //   ),
        //   title: Text('KFC', style: subHeaderTextStyle),
        //   subtitle: Text('June 26',
        //       style: subtitleTextStyle2.copyWith(color: Colors.white70)),
        //   trailing: Text(
        //     '+\$2,010',
        //     style: subtitleTextStyle2.copyWith(color: Colors.grey[500]),
        //   ),
        // ),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 26.r,
            ),
            addHorizontalSpace(20.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: subHeaderTextStyle),
                Text(
                  'June 26',
                  style: subtitleTextStyle2,
                ),
              ],
            ),
            Spacer(),
            Text(
              '+\$2,010',
              style: subtitleTextStyle2.copyWith(color: Colors.grey[500]),
            )
          ],
        ));
  }
}
