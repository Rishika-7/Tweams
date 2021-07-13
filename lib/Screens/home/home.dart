import 'package:flutter/material.dart';
import 'package:trial/constants.dart';
import 'package:trial/shared/custom_cards.dart';
import '../../navbar.dart';

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.account_circle,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MyHome(
                      index: 2,
                    );
                  },
                ),
              );
            },
          )
        ],
        backgroundColor: Color(0XFF0047b3),
        title: new Text(
          "Tweams",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
          ),
        ),
      ),
      backgroundColor: kwhite,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Container(
              height: 200.0,
              width: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/welcome.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return MyHome(
                            index: 0,
                          );
                        },
                      ),
                    );
                  },
                  child: Container(
                      height: 150,
                      width: 150,
                      child:
                          customCard("", ".", "assets/images/speech-bubbles")),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return MyHome(
                            index: 1,
                          );
                        },
                      ),
                    );
                  },
                  child: Container(
                      height: 150,
                      width: 150,
                      child: customCard("", ".", "assets/images/video-chat")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
