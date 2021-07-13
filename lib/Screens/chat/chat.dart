import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tweams'),
      ),
      body: Center(
        child: Container(
          height: 250.0,
          width: 250.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/coming.png'),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
