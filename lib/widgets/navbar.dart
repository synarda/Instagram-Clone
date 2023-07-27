// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/utils/const.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({
    Key? key,
    required this.img,
  }) : super(key: key);
  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: Get.width,
      color: Colorss.darkBackground,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Image.asset("lib/assets/home.png", fit: BoxFit.cover, height: 20.h),
        const Icon(Icons.search, color: Colors.white),
        Image.asset("lib/assets/plus-sign.png", fit: BoxFit.cover, height: 20.h),
        Image.asset("lib/assets/bag.png", fit: BoxFit.cover, height: 28.h),
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.network(img, fit: BoxFit.cover, height: 30.h, width: 30.w),
        ),
      ]),
    );
  }
}
