import 'package:dilshoesstore/routes/route.dart';
import 'package:dilshoesstore/styles/colors.dart';
import 'package:dilshoesstore/styles/text_style.dart';
import 'package:dilshoesstore/widgets/button_custom.dart';
import 'package:dilshoesstore/widgets/form_text_widget.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget sectionOne() {
      return Container(
        margin: const EdgeInsets.only(top: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sign Up",
              style: fontWhiteBold.copyWith(fontSize: 24.0),
            ),
            Text(
              "Register and Happy Shoping",
              style: fontDisableNormal.copyWith(fontSize: 14.0),
            ),
          ],
        ),
      );
    }

    Widget sectionTwo() {
      return Container(
        margin: const EdgeInsets.only(top: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormText(
              text: "Full Name",
              hint: "Your Full Name",
              prefixIcon: const Icon(
                Icons.person,
                color: ColorsDilShoesStore.iconColor,
              ),
            ),
            FormText(
              text: "Username",
              hint: "Your Username",
              prefixIcon: const Icon(
                Icons.near_me_outlined,
                color: ColorsDilShoesStore.iconColor,
              ),
            ),
            FormText(
              text: "Email Address",
              hint: "Your Email Address",
              prefixIcon: const Icon(
                Icons.email,
                color: ColorsDilShoesStore.iconColor,
              ),
            ),
            FormText(
              text: "Password",
              hint: "Your Password",
              prefixIcon: const Icon(
                Icons.password_sharp,
                color: ColorsDilShoesStore.iconColor,
              ),
            ),
          ],
        ),
      );
    }

    Widget sectionFour() {
      return Container(
        margin: const EdgeInsets.only(top: 100.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account? ",
              style: fontDisableNormal.copyWith(fontSize: 12.0),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, RouteDilShoesStore.signin);
                },
                child: const Text("Sign In"))
          ],
        ),
      );
    }

    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(30.0),
      color: ColorsDilShoesStore.primaryColor,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SECTION 1
            sectionOne(),

            // SECTION 2
            sectionTwo(),

            // SECTION 3
            const ButtonCustom(),

            // SECTION 4
            sectionFour(),
          ],
        ),
      ),
    ));
  }
}
