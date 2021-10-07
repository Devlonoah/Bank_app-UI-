import 'package:flutter/material.dart';
import 'package:shitshow/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderAndCardCount extends StatelessWidget {
  const HeaderAndCardCount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 0.0.w, left: 13.0.w),
      child: Row(
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
      ),
    );
  }
}
