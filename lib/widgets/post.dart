// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/utils/const.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key? key,
    required this.name,
    required this.likes,
    required this.description,
    required this.imgUrl,
  }) : super(key: key);
  final String name;
  final double likes;
  final String description;
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            SizedBox(width: 16.w),
            ClipRRect(
              borderRadius: BorderRadius.circular(50.r),
              child: Image.network(
                imgUrl,
                fit: BoxFit.cover,
                height: 30.sp,
                width: 30.sp,
              ),
            ),
            SizedBox(width: 8.w),
            Text(name, style: Styles.bigTitleNonStyle),
            const Spacer(),
            Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 23.sp,
            ),
            SizedBox(width: 8.w)
          ],
        ),
        SizedBox(height: 8.h),
        SizedBox(
          height: 250.h,
          width: Get.width,
          child: Image.network(imgUrl, fit: BoxFit.cover),
        ),
        SizedBox(height: 8.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_border, color: Colors.white, size: 23.h),
                  SizedBox(width: 12.w),
                  Image.asset(
                    "lib/assets/chat.png",
                    height: 23.h,
                  ),
                  SizedBox(width: 12.w),
                  Image.asset(
                    "lib/assets/send.png",
                    height: 20.h,
                  ),
                ],
              ),
              const Spacer(),
              Image.asset(
                "lib/assets/save-instagram.png",
                height: 23.h,
              )
            ],
          ),
        ),
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.w),
          child: Text(likes.toString(), textAlign: TextAlign.start, style: Styles.bigTitleNonStyle),
        ),
        SizedBox(height: 4.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.w),
          child: RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              text: name,
              style: Styles.smallTextStyle.copyWith(fontSize: 16.sp, color: Colors.white),
              children: <TextSpan>[
                TextSpan(
                  text: "   $description",
                  style: Styles.smallTextStyle.copyWith(
                    fontSize: 14.sp,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
