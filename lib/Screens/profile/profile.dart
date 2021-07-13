import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:trial/constants.dart';
import 'package:trial/components/rounded_button.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();

  //form values
  late String _currentName;
  late int _currentEmail;
  late double _currentUsername;
  late double _currentOrganisation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: profileView(),
    );
  }

  Widget profileView() {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: AppColors.darkBlue,
        title: new Text(
          "Profile Details",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
            child: Stack(
              children: <Widget>[
                CircleAvatar(
                  radius: 70,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/profile_pic.png',
                      height: 150,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 1,
                    right: 1,
                    child: Container(
                      height: 40,
                      width: 40,
                      child: Icon(
                        Icons.add_a_photo,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xFF0047B3),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ))
              ],
            ),
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Color(0xFF0047B3), Color(0xFF0047B3)])),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
                      child: Container(
                        height: 60,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              validator: (value) => value!.isEmpty
                                  ? 'Please enter your name'
                                  : null,
                              onChanged: (value) =>
                                  setState(() => _currentName = value),
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Full Name",
                                contentPadding: const EdgeInsets.all(5.0),
                                hintStyle: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border:
                                Border.all(width: 1.0, color: Colors.white70)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                      child: Container(
                        height: 60,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              validator: (value) => value!.isEmpty
                                  ? 'Please enter your email id'
                                  : null,
                              onChanged: (value) => setState(
                                  () => _currentEmail = int.parse(value)),
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "tweamsuser@email.com",
                                contentPadding: const EdgeInsets.all(5.0),
                                hintStyle: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border:
                                Border.all(width: 1.0, color: Colors.white70)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                      child: Container(
                        height: 60,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              // initialValue: userdata.weight.toString(),
                              style: TextStyle(color: Colors.white),
                              validator: (value) => value!.isEmpty
                                  ? 'Please enter your username'
                                  : null,
                              onChanged: (value) => setState(
                                  () => _currentUsername = double.parse(value)),
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Username",
                                contentPadding: const EdgeInsets.all(5.0),
                                hintStyle: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border:
                                Border.all(width: 1.0, color: Colors.white70)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                      child: Container(
                        height: 60,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              validator: (value) => value!.isEmpty
                                  ? 'Please enter your organisation name'
                                  : null,
                              onChanged: (value) => setState(() =>
                                  _currentOrganisation = double.parse(value)),
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Organisation",
                                contentPadding: const EdgeInsets.all(5.0),
                                hintStyle: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border:
                                Border.all(width: 1.0, color: Colors.white70)),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    RoundedButton(
                      text: "Update Profile",
                      color: kPrimaryLightColor,
                      textColor: kPrimaryColor,
                      press: () {},
                      key: UniqueKey(),
                    ),
                    SizedBox(height: 10.0),
                    RoundedButton(
                      text: "Sign Out",
                      color: kPrimaryLightColor,
                      textColor: kPrimaryColor,
                      press: () {},
                      key: UniqueKey(),
                    ),
                  ],
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
