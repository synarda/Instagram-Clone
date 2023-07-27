import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/controllers/home_controller.dart';
import 'package:instagram_clone/utils/const.dart';
import 'package:instagram_clone/widgets/appbar_title.dart';
import 'package:instagram_clone/widgets/post.dart';
import 'package:instagram_clone/widgets/storie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        controller: controller.scrollController,
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0,
            flexibleSpace: Container(
                padding: EdgeInsets.only(left: 16.w, right: 16.w),
                color: Colorss.forebackground,
                child: const AppbarTitleWidget()),
            floating: true,
            expandedHeight: 20.h,
            toolbarHeight: 55.h,
            pinned: false,
            snap: false,
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 110.h,
                  width: Get.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Stories.storiesList.length,
                    itemBuilder: (context, index) => StoriesWidget(
                      img: Stories.storiesList[index]["img"].toString(),
                      name: Stories.storiesList[index]["name"].toString(),
                      isAdmin: Stories.storiesList[index]["id"] == 0 ? true : false,
                    ),
                  ),
                ),
                Column(
                    children: Posts()
                        .postList
                        .map(
                          (e) => PostWidget(
                            imgUrl: e.imgUrl,
                            name: e.userName,
                            description: e.description,
                            likes: e.like,
                          ),
                        )
                        .toList()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
