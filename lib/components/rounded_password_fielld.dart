import 'package:flutter/material.dart';
import 'package:talabat/components/text_field_container.dart';


class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final TextEditingController controlar;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
    this.controlar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: controlar,
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: Color(0xFFF85D32),
          ),
          suffixIcon: Icon(
            Icons.visibility,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
