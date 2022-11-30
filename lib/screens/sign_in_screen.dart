import 'package:dilshoesstore/styles/colors.dart';
import 'package:dilshoesstore/styles/text_style.dart';
import 'package:dilshoesstore/widgets/form_text_widget.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  Widget sectionOne() {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Login",
            style: fontWhiteBold.copyWith(fontSize: 24.0),
          ),
          Text(
            "Sign In to Countinue",
            style: fontDisableNormal.copyWith(fontSize: 14.0),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30.0),
        color: ColorsDilShoesStore.primaryColor,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SECTION 1
            sectionOne(),

            // SECTION 2
            FormText()
          ],
        ),
      ),
    );
  }
}
