import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hidable/hidable.dart';
import 'package:instagram_clone/controllers/home_controller.dart';
import 'package:instagram_clone/home_screen.dart';
import 'package:instagram_clone/utils/const.dart';
import 'package:instagram_clone/widgets/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final controllerHome = Get.put(HomeController());
    return ScreenUtilInit(
        designSize: const Size(432, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                useMaterial3: true,
              ),
              home: Stack(
                children: [
                  const HomePage(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Hidable(
                        controller: controllerHome.scrollController,
                        child: NavbarWidget(img: Stories.storiesList[0]["img"].toString())),
                  )
                ],
              ),
            ));
  }
}
