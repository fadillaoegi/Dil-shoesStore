import 'package:dilshoesstore/styles/colors.dart';
import 'package:dilshoesstore/styles/text_style.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';

// ignore: must_be_immutable
class FormPass extends StatelessWidget {
  FormPass({super.key, this.hint = "", this.text = "", this.prefixIcon});
  String? hint;
  String? text;
  Icon? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text!,
            style: fontWhiteMedium.copyWith(fontSize: 16.0),
          ),
          Container(
            margin: const EdgeInsets.only(top: 12.0),
            width: double.infinity,
            height: 50.0,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: fontDisableNormal,
                fillColor: Colors.amber,
                prefixIcon: prefixIcon,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(
                      color: ColorsDilShoesStore.primaryColor, width: 3.0),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
