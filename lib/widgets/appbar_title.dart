import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/utils/const.dart';

class AppbarTitleWidget extends StatelessWidget {
  const AppbarTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          child: Row(
            children: [
              Text("Instagram", style: Styles.bigTitleStyle),
              SizedBox(width: 8.w),
              Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white, size: 20.h)
            ],
          ),
        ),
        const Spacer(),
        Row(
          children: [
            Icon(Icons.favorite_border, color: Colors.white, size: 25.h),
            SizedBox(width: 20.w),
            Image.asset(
              "lib/assets/messenger.png",
              height: 25.h,
            )
          ],
        )
      ],
    );
  }
}
