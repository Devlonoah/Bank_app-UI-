import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return Stack(
      children: [
        ListTile(
          minVerticalPadding: 0.0,
          contentPadding: EdgeInsets.zero,
          horizontalTitleGap: 6.w,
          leading: Icon(
            icon,
            color: COLOR_GREY_PINK,
          ),
          title: Text(
            label,
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: COLOR_GREY_PINK),
          ),
        ),
        hasNotification
            ? Positioned(
                top: 9.h,
                left: 20.0.w,
                child: CircleAvatar(
                  radius: 5.r,
                  backgroundColor: COLOR_SUN_YELLOW,
                ),
              )
            : SizedBox.shrink()
      ],
    );
  }
}
