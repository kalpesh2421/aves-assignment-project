import 'package:aves_project/home/home_page_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_page_controller.dart';

class ImageScreen extends StatefulWidget {
  final HomePageModel data;
  const ImageScreen({Key? key, required this.data}) : super(key: key);

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 2,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey.shade500,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            "${widget.data.urls?.regular}",
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 10,
          ),
          widget.data.description.isNotEmpty
              ? Text(
                  widget.data.description,
                  style: const TextStyle(color: Colors.white),
                )
              : Text(
                  widget.data.altDescription,
                  style: const TextStyle(color: Colors.white),
                ),
        ],
      ),
    );
  }
}
