// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoryNewWidget extends StatelessWidget {
  const StoryNewWidget({
    Key? key,
    required this.img,
    required this.isAdmin,
  }) : super(key: key);
  final String img;
  final bool isAdmin;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Container(
        height: 80.h,
        width: 80.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.bottomLeft,
            begin: Alignment.topRight,
            colors: isAdmin ? [Colors.transparent, Colors.transparent] : [Colors.purple, Colors.amber],
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50.r),
          child: Container(
            padding: EdgeInsets.all(4.sp),
            color: isAdmin ? Colors.transparent : Colors.black,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: img.isEmpty
                      ? const CupertinoActivityIndicator(color: Colors.white)
                      : Image.network(
                          img,
                          fit: BoxFit.cover,
                          height: isAdmin ? 80.h : 70.h,
                          width: isAdmin ? 80.w : 70.w,
                        ),
                ),
                isAdmin
                    ? Positioned(
                        bottom: 5.h,
                        right: 5.w,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(50.r),
                            child: Container(
                              height: 20.h,
                              width: 20.w,
                              color: Colors.blue,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 10.sp,
                              ),
                            )),
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
