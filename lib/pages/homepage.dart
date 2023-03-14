import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffeba7ac),
        title: const Text(
          "Geometric App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width/2,
                child: Image.asset("assets/triangle1.jpg"),
              ),
            Text(
              "MyMenu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
            ),
            SizedBox(
              height: 20,
            ),
            _profileButton(),
            SizedBox(
              height: 20,
            ),
            _segitigaButton(),
            SizedBox(
              height: 20,
            ),
            _layangLayangButton(),
          ],
        ),
      ),
    );
  }

  Widget _segitigaButton() {
    return Container(
      padding: EdgeInsets.only(left: 25.0, right: 25.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xffeba7ac)),
          minimumSize: MaterialStateProperty.all(Size(400,40)),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/segitiga');
        },
        child: Text("Segitiga"),
      ),
    );
  }

   Widget _layangLayangButton() {
    return Container(
      padding: EdgeInsets.only(left: 25.0, right: 25.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xffeba7ac)),
          minimumSize: MaterialStateProperty.all(Size(400,40)),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/layang');
        },
        child: Text("Layang-Layang"),
      ),
    );
  }

   Widget _profileButton() {
    return Container(
      padding: EdgeInsets.only(left: 25.0, right: 25.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xffeba7ac)),
          minimumSize: MaterialStateProperty.all(Size(400,40)),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/profile');
        },
        child: Text("Profile"),
      ),
    );
  }
}
