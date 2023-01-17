import 'package:aves_project/home/full_image_screen.dart';
import 'package:aves_project/home/image_list_item.dart';
import 'package:aves_project/home/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_page_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomePageController _homePageController = Get.put(HomePageController());

  @override
  void initState() {
    _homePageController.getHomeData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "PHOTOS",
          style: TextStyle(color: Colors.blue, fontSize: 20),
        ),
      ),
      body: GetBuilder(
        init: _homePageController,
        builder: (controller) {
          if (_homePageController.homePageList.isNotEmpty) {
            return ListView.builder(
              itemCount: _homePageController.homePageList.length,
              itemBuilder: (context, index) {
                return ImageListItem(
                  data: _homePageController.homePageList[index],
                );
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
