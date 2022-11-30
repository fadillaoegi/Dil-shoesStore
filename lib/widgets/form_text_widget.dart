import 'package:dilshoesstore/styles/colors.dart';
import 'package:dilshoesstore/styles/text_style.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';

class FormText extends StatelessWidget {
  const FormText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email Address",
            style: fontWhiteMedium.copyWith(fontSize: 16.0),
          ),
          Container(
            margin: const EdgeInsets.only(top: 12.0),
            width: double.infinity,
            height: 50.0,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Your Email Address",
                  hintStyle: fontDisableNormal,
                  fillColor: Colors.amber,
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                    color: ColorsDilShoesStore.iconColor,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(
                          color: ColorsDilShoesStore.primaryColor,
                          width: 3.0))),
            ),
          )
        ],
      ),
    );
  }
}
