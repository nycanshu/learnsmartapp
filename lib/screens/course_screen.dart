import 'package:flutter/material.dart';

import '../widgets/description_screen.dart';
import '../widgets/videos_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class CourseScreen extends StatefulWidget {
  String img;
  String links;
  CourseScreen(this.img, this.links);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  bool isVidSelected = true;

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
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.img,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              size: 28,
              color: const Color.fromARGB(255, 31, 86, 131).withOpacity(0.7),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/${widget.img}.png"),
                ),
                color: Color(0xfff5f3ff),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      _launchURL(widget.links);
                    },
                    child: Icon(
                      Icons.play_arrow_rounded,
                      size: 45,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "${widget.img} Complete Course",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("By Team LearnSmart"),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 52,
              width: 50,
              decoration: BoxDecoration(
                color: Color(0xfff5f3ff),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    color: isVidSelected
                        ? Color(0xff674aef)
                        : Color(0xff674aef).withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isVidSelected = true;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "Videos",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: isVidSelected
                        ? Color(0xff674aef).withOpacity(0.5)
                        : Color(0xff674aef),
                    borderRadius: BorderRadius.circular(10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isVidSelected = false;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "Description",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            isVidSelected ? VideoScreen() : DescriptionScreen(),
          ],
        ),
      ),
    );
  }
}
