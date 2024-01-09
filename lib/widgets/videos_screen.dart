import 'package:flutter/material.dart';

class VideoScreen extends StatelessWidget {
  VideoScreen({super.key});

  List videoList = [
    "Introduction",
    "Chapter-1",
    "Chapter-2",
    "Chapter-3",
    "Chapter-4",
    "Chapter-5",
    "Chpater-6",
    "Chapter-7",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0
                  ? Color(0xff674aef)
                  : Color(0xff674aef).withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text(videoList[index]),
          subtitle: Text("About 30 min"),
        );
      },
    );
  }
}
