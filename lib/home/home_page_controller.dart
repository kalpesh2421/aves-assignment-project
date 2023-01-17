import 'dart:convert';

import 'package:aves_project/home/home_page_model.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart' as http;

class HomePageController extends GetxController {
  List<HomePageModel> homePageList = [];

  Future<void> getHomeData() async {
    try {
      final res = await http.get(Uri.parse(
          "https://api.unsplash.com/photos/?client_id=8634366274bd23efb9b023fb9b2c6502e67f7dd5d6a7962b3b49fbee170940f8"));
      if (res.statusCode == 200) {
        final data = json.decode(res.body) as List<dynamic>;
        homePageList = List<HomePageModel>.from(
            data.map((e) => HomePageModel.fromJson(e)));
      }
      update();
    } catch (e) {
      print(e.toString());
    }
  }

}
