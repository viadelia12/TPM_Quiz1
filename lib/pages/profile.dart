import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffeba7ac),
        title: Text("Profile"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 100, backgroundImage: AssetImage('assets/me.jpg')),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 305.0,
              height: 40.0,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Color(0xffeba7ac),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Text(
                "Novia Adelia - 123200023",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Teknologi & Pemrograman Mobile IF-D",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Membaca & Mendengarkan Lagu",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
