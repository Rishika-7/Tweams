import 'package:flutter/material.dart';
import 'package:trial/Screens/Login/components/background.dart';
import 'package:trial/Screens/home/home.dart';
import 'package:trial/components/already_have_an_account_acheck.dart';
import 'package:trial/components/rounded_button.dart';
import 'package:trial/components/rounded_input_field.dart';
import 'package:trial/components/rounded_password_field.dart';
import 'package:trial/shared/loading.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // text field state
  String email = '';
  String password = '';
  String error = '';

  //final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return loading
        ? Loading()
        : Background(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Login",
                      style: TextStyle(fontSize: 25, fontFamily: 'Sketch'),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Image.asset(
                      "assets/images/login.png",
                      height: size.height * 0.45,
                      width: size.width * 0.85,
                    ),
                    SizedBox(height: size.height * 0.03),
                    RoundedInputField(
                      validate: (value) =>
                          value!.isEmpty ? 'Enter an email' : null,
                      hintText: "Email id",
                      onChanged: (value) {
                        setState(() => email = value);
                      },
                    ),
                    RoundedPasswordField(
                      validate: (value) => value!.length < 6
                          ? 'Enter a password 6+ chars long'
                          : null,
                      onChanged: (value) {
                        setState(() => password = value);
                      },
                    ),
                    RoundedButton(
                      text: "Login",
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Main();
                            },
                          ),
                        );
                      },
                      key: UniqueKey(),
                    ),
                    SizedBox(height: size.height * 0.03),
                    AlreadyHaveAnAccountCheck(
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Main();
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
