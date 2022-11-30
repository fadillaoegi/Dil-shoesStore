import 'package:dilshoesstore/routes/route.dart';
import 'package:dilshoesstore/styles/colors.dart';
import 'package:dilshoesstore/styles/text_style.dart';
import 'package:dilshoesstore/widgets/button_custom.dart';
import 'package:dilshoesstore/widgets/form_text_widget.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
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

    Widget sectionTwo() {
      return Container(
        margin: const EdgeInsets.only(top: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormText(
              text: "Email Address",
              hint: "Your Email Address",
              prefixIcon: const Icon(
                Icons.email_outlined,
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
        margin: const EdgeInsets.only(top: 300.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account? ",
              style: fontDisableNormal.copyWith(fontSize: 12.0),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteDilShoesStore.signup);
                },
                child: const Text("Sign up"))
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
      ),
    );
  }
}
