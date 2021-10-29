import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.label,
    required this.onPress,
    required this.icon,
    this.hasNotification = false,
  }) : super(key: key);

  final String label;
  final void Function() onPress;
  final IconData icon;

  final bool hasNotification;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 0.0,
      contentPadding: EdgeInsets.zero,
      horizontalTitleGap: 6.w,
      leading: Icon(
        icon,
        color: COLOR_GREY_PINK,
        size: 14.r,
      ),
      title: Text(
        label,
        style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: COLOR_GREY_PINK),
      ),
    );
  }
}
