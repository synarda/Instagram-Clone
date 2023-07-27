import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final scrollController = ScrollController();
  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }
}
