import 'package:flutter/material.dart';
import 'package:trial/components/text_field_container.dart';
import 'package:trial/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final String? Function(String?)? validate;
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.validate,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      key: UniqueKey(),
      child: TextFormField(
        validator: validate,
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          hintStyle: TextStyle(color: kPrimaryColor),
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
