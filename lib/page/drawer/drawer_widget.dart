import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../app_size_functions.dart';
import '../../constants.dart';
import 'widget/custom_tile.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            addVerticalSpace(50),
            Align(alignment: Alignment.topRight, child: CancelButton()),
            AvatarAndOccupation(),
            addVerticalSpace(20),
            Column(
              children: [
                CustomListTile(
                    icon: FontAwesomeIcons.home,
                    onPress: () {},
                    label: 'Corporate APP'),
                CustomListTile(
                    icon: FontAwesomeIcons.diceFive,
                    label: 'Security Settings',
                    hasNotification: true,
                    onPress: () {}),
                CustomListTile(
                    icon: FontAwesomeIcons.shoppingCart,
                    label: 'Online Shopping',
                    onPress: () {}),
                CustomListTile(
                    icon: FontAwesomeIcons.shoppingBasket,
                    onPress: () {},
                    label: 'Groceries'),
                CustomListTile(
                    icon: FontAwesomeIcons.wrench,
                    label: 'Utilities',
                    onPress: () {}),
                CustomListTile(
                    icon: FontAwesomeIcons.fingerprint,
                    label: 'Thumb Scanner',
                    onPress: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class AvatarAndOccupation extends StatelessWidget {
  const AvatarAndOccupation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child:
                CircleAvatar(backgroundColor: Colors.blueGrey, radius: 18.r)),
        addVerticalSpace(10),
        Text('Opeyemi .N',
            style: subHeaderTextStyle.copyWith(fontWeight: FontWeight.w600)),
        addVerticalSpace(7),
        Text('Software Developer', style: subtitleTextStyle2)
      ],
    );
  }
}

class CancelButton extends StatelessWidget {
  const CancelButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(padding: EdgeInsets.zero),
      onPressed: () {},
      child: Container(
        height: 37.h,
        width: 37.w,
        decoration: BoxDecoration(
          color: COLOR_CARD,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Icon(Icons.cancel_outlined, color: COLOR_WHITE, size: 20.r),
      ),
    );
  }
}
