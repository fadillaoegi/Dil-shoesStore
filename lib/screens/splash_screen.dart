import 'dart:async';
import 'package:dilshoesstore/screens/sign_in_screen.dart';
import 'package:dilshoesstore/styles/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    SplashStart();
  }

  SplashStart() async {
    var durasiSplash = const Duration(seconds: 4);

    return Timer(durasiSplash, () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return const SignInScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorsDilShoesStore.primaryColor,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/img/union.png",
                  width: 249.0,
                  height: 150.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
