// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CoursesScreen extends StatelessWidget {
  CoursesScreen({super.key});

  List courses = ["Physics", "Chemistry", "Biology", "Mathematics"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('All Courses'),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: Column(
          children: [
            NewCourseWidget(
              link:
                  "https://www.youtube.com/playlist?list=PL4BZMEV0Q77jNUlpwx7M_BUNfjfpVpVfX",
              coursename: "Physics",
            ),
            NewCourseWidget(
              link:
                  "https://www.youtube.com/playlist?list=PL4BZMEV0Q77gSzT4ksI0YsyyPr0cwBDr3",
              coursename: "Chemistry",
            ),
            NewCourseWidget(
              link:
                  "https://www.youtube.com/playlist?list=PL4BZMEV0Q77g15hU5FceSXQiDVUlIGX8_",
              coursename: "Biology",
            ),
            NewCourseWidget(
              link:
                  "https://www.youtube.com/playlist?list=PL0dzwwN8t4yCmkJOWOkVkSj8HehNWfIZY",
              coursename: "Mathematics",
            )
          ],
        ));
  }
}

class NewCourseWidget extends StatelessWidget {
  final String? link;
  final String? coursename;
  const NewCourseWidget({
    this.coursename,
    super.key,
    this.link,
  });

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can't launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(19, 10, 0, 0),
      child: GestureDetector(
        onTap: () {
          _launchURL(link ?? "");
        },
        child: Container(
            height: 90,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              color: Color(0xfff5f3ff),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.play_circle_fill_rounded,
                      size: 35,
                      color: Colors.blue,
                    ),
                    title: Text(
                      coursename ?? "",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                    subtitle: Text("A complete playlist of $coursename"),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
