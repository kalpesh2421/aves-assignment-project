import 'dart:async';

import 'package:aves_project/home/home_page_model.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final HomePageModel data;
  const ProfilePage({Key? key, required this.data}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        title: const Text(
          'PROFILE',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.network(
                widget.data.user?.profileImage?.medium ?? '',
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 30),
            Text(widget.data.user?.name ?? ''),
            const SizedBox(height: 15),
            Text((widget.data.user?.location ?? '').isNotEmpty
                ? widget.data.user?.location ?? ''
                : 'Location'),
            const SizedBox(height: 30),
            Text(
              widget.data.user?.bio ?? '',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
