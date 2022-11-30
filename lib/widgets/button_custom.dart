import 'package:dilshoesstore/styles/colors.dart';
import 'package:dilshoesstore/styles/text_style.dart';
import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  const ButtonCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      width: double.infinity,
      height: 50.0,
      child: ElevatedButton(
          style:
              ElevatedButton.styleFrom(primary: ColorsDilShoesStore.iconColor),
          onPressed: () {},
          child: Text(
            "Sign In",
            style: fontWhiteMedium.copyWith(fontSize: 16.0),
          )),
    );
  }
}
