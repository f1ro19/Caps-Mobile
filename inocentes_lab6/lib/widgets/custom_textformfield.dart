import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inocentes_lab6/constants.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({super.key,
    required this.validator,
    required this.onSaved,
    this.controller = TextEditingController,
    this.isObscure = false,
    required this.fontSize,
    required this.fontColor,
    this.hintTextSize = 12,
    this.hintText = '',
    this.fillColor = Colors.black12,
    required this.height,
    required this.width,
    this.keyboardType = TextInputType.text,
    this.maxLength = 200,
    this.suffixIcon});

  final validator;
  final onSaved;
  final controller;
  final isObscure;
  final fontSize;
  final fontColor;
  final double height, width;
  final hintTextSize;
  final hintText;
  final fillColor;
  TextInputType keyboardType;
  int maxLength;
  final suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onSaved: onSaved,
      controller: controller,
      obscureText: isObscure,
      keyboardType: keyboardType,
      inputFormatters: [
        LengthLimitingTextInputFormatter(maxLength),
      ],
      style: TextStyle(
        fontSize: fontSize,
        color: fontColor,
      ),
      decoration: InputDecoration(
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.fromLTRB(width, height, width, height),
          focusColor: Colors.black12,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: FB_DARK_PRIMARY,
              width: 2,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 2,
            ),
          ),
          errorStyle: const TextStyle(fontFamily: 'Frutiger'),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 2,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: FB_LIGHT_PRIMARY,
              width: 2,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          filled: true,
          hintStyle: TextStyle(
            color: Colors.black12,
            fontSize: hintTextSize,
            fontFamily: 'Frutiger',
          ),
          hintText: hintText,
          fillColor: fillColor),
    );
  }
}