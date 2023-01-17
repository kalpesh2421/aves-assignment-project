import 'package:aves_project/home/profile_page.dart';
import 'package:flutter/material.dart';

import 'full_image_screen.dart';
import 'home_page_model.dart';

class ImageListItem extends StatelessWidget {
  final HomePageModel data;
  const ImageListItem({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ImageScreen(data: data),
                      ),
                    );
                  },
                  child: Image.network(
                    "${data.urls?.regular}",
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(data.description.isNotEmpty
                    ? data.description
                    : data.altDescription),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProfilePage(
                          data: data,
                        ),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            "${data.user?.profileImage?.small}",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          '${data.user?.username}',
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                )
              ]),
        ),
        const Divider(
          thickness: 2,
        ),
      ],
    );
  }
}
