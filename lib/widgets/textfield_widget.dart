import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextfieldWidget extends StatelessWidget {
  const TextfieldWidget(
      {super.key,
      this.label,
      this.hintText,
      this.suffixIcon,
      this.controller,
      this.validator,
      this.keyboardType,
      this.margin,
      this.inputFormatters
    });

  final String? label;
  final String? hintText;
  final Icon? suffixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final EdgeInsets? margin;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextFormField(
        inputFormatters: inputFormatters,
        keyboardType: keyboardType,
        controller: controller,
        validator: validator,
        style: const TextStyle(color: Color(0xFF95A1AC)),
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          labelText: label,
          hintText: hintText,
        ),
      ),
    );
  }
}
