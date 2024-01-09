import 'dart:ffi';

import 'package:flutter/material.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "This Course is provided by the team LearnSmart. \n\nThis is Completely free for all the students.",
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.justify,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Course Length",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.266,
              ),
              Icon(
                Icons.timer,
                size: 25,
                color: Color(0xff674aef),
              ),
              SizedBox(
                width: 10,
              ),
              Text("30 Hours")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Rating (3/5)",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.star,
                color: Color(0xff674aef),
                size: 20,
              ),
              Icon(
                Icons.star,
                color: Color(0xff674aef),
                size: 20,
              ),
              Icon(
                Icons.star,
                color: Color(0xff674aef),
                size: 20,
              ),
              Icon(
                Icons.star,
                size: 20,
              ),
              Icon(
                Icons.star,
                size: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}
