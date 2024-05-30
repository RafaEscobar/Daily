import 'package:flutter/material.dart';

class InputTextWidget extends StatelessWidget {
  final double inputFontSize;
  final Icon inputIcon;
  final Color inputFilledColor;
  final VoidCallback? iconBtnOnPress;

  const InputTextWidget({
    required this.inputFontSize,
    required this.inputIcon,
    required this.inputFilledColor,
    this.iconBtnOnPress,
    super.key
  });

  @override
  Widget build(BuildContext context) {

    final OutlineInputBorder inputBorderStyle = OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.transparent)
    );

    return  TextFormField(
      style: TextStyle(fontSize: inputFontSize),
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: iconBtnOnPress,
          icon: inputIcon,
        ),
        filled: true,
        fillColor: inputFilledColor,
        enabledBorder: inputBorderStyle,
        focusedBorder: inputBorderStyle,
      ),
    );
  }
}