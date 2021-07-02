import 'package:flutter/material.dart';
import 'package:talabat/components/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final TextInputType keyboardType;
  final TextEditingController controlar;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon,
    this.onChanged,
    this.keyboardType,
    this.controlar
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        keyboardType: keyboardType,
        onChanged: onChanged,
        controller: controlar,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Color(0xFFF85D32),
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
