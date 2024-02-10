import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 10),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('images/profile_avatar.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Himanshu Kumar",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ProfileDetails(
              viewicon: Icon(Icons.email),
              text: "usermail@gmail.com",
            ),
            ProfileDetails(
              viewicon: Icon(Icons.person_2),
              text: "username",
            ),
            ProfileDetails(
              viewicon: Icon(Icons.call),
              text: "+91 1234567891",
            ),
            ProfileDetails(
              viewicon: Icon(Icons.password),
              text: "***********",
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Edit Profile",
              style: TextStyle(
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileDetails extends StatelessWidget {
  final String? text;
  final Icon? viewicon;
  const ProfileDetails({
    super.key,
    this.text,
    this.viewicon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70, top: 20),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          if (viewicon != null) viewicon!,
          SizedBox(
            width: 30,
          ),
          Text(
            text ?? "",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
