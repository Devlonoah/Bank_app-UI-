import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app_size_functions.dart';
import '../../../constants.dart';

class BorderBox extends StatelessWidget {
  final void Function()? onPress;
  final IconData icon;

  final String label;

  final Color iconColor;
  const BorderBox(
      {Key? key,
      this.onPress,
      required this.icon,
      required this.iconColor,
      required this.label})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(15.r),
            decoration: BoxDecoration(
                color: COLOR_CARD, borderRadius: BorderRadius.circular(15.0.r)),
            child: Icon(
              icon,
              size: 19.sp,
              color: iconColor,
            ),
          ),
          addVerticalSpace(5),
          Text(label, style: subtitleTextStyle)
        ],
      ),
    );
  }
}
