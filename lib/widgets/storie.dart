// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/utils/const.dart';
import 'package:instagram_clone/widgets/story_new.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({
    Key? key,
    required this.img,
    required this.name,
    required this.isAdmin,
  }) : super(key: key);
  final String img;
  final String name;
  final bool isAdmin;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 6.sp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          StoryNewWidget(img: img, isAdmin: isAdmin),
          SizedBox(height: 8.h),
          SizedBox(
            width: 60.w,
            child: Text(
              isAdmin ? "Your Story" : name,
              textAlign: TextAlign.center,
              style: Styles.smallTextStyle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
