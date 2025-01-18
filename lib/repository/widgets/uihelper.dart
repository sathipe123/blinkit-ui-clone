import 'package:flutter/material.dart';

class Uihelper {
  static customimage({required image}) {
    return Image.asset("assets/images/$image");
  }

  static customText(
      {required String text,
      required FontWeight fontweight,
      required Color color,
      String? fontFamily,
      required double fontsize}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontFamily: fontFamily ?? "regular",
        fontWeight: fontweight,
        color: color,
      ),
    );
  }

  // ignore: non_constant_identifier_names
  static CustomTextField({required TextEditingController controller}) {
    return Container(
      height: 40,
      width: 360,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: Color(0XFFC5C5C5))),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            hintText: "Search 'ice-cream'",
            prefixIcon: Image.asset("assets/images/search.png"),
            suffixIcon: Image.asset("assets/images/mic 1.png"),
            border: InputBorder.none),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  static CustomButton(VoidCallback callback) {
    return Container(
      height: 18,
      width: 30,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color(0XFF27AF34)),
          borderRadius: BorderRadius.circular(4)),
      child: Center(
        child: Text(
          "Add",
          style: TextStyle(fontSize: 8, color: Color(0XFF27AF34)),
        ),
      ),
    );
  }
}
