import 'package:flutter/material.dart';

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
              coursename: "Physics",
            ),
            NewCourseWidget(
              coursename: "Chemistry",
            ),
            NewCourseWidget(
              coursename: "Biology",
            ),
            NewCourseWidget(
              coursename: "Mathematics",
            )
          ],
        ));
  }
}

class NewCourseWidget extends StatelessWidget {
  final String? coursename;
  const NewCourseWidget({
    this.coursename,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(19, 10, 0, 0),
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
    );
  }
}
