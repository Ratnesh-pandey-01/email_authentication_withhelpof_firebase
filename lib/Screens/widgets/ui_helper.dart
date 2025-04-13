import 'package:flutter/material.dart';

class UiHelper {
  static CustomTextFeild(
    TextEditingController controller,
    String text,
    IconData iconData,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: text,
          suffixIcon: Icon(iconData),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
        ),
      ),
    );
  }
}
