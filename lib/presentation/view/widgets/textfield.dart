import 'package:flutter/material.dart';

Widget customTextField({
   String? labelText,
  String hintText = '',
  Widget? prefixIcon,
  Widget? suffixIcon,
  TextStyle? hintStyle,
  bool obsecureText = false,
  TextInputType keyboardType = TextInputType.text,
  TextEditingController? controller,
  bool readOnly = false,
  Color fillColor = Colors.white,
  Color borderColor = Colors.grey,
  FormFieldValidator<String>? validator,
  bool isFilled = false,
}) => TextFormField(
  keyboardType: keyboardType,
  validator: validator,
  obscureText: obsecureText,
  readOnly: readOnly,
  controller: controller,
  decoration: InputDecoration(
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
    labelText: labelText,
    hintText: hintText,
    fillColor: fillColor,
    filled: isFilled,
    hintStyle: hintStyle,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: borderColor, width: 1.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: borderColor, width: 1.0),
    ),
  ),
);
