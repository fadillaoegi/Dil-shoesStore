import 'package:dilshoesstore/routes/route.dart';
import 'package:dilshoesstore/screens/sign_in_screen.dart';
import 'package:dilshoesstore/screens/sign_up_screen.dart';
import 'package:dilshoesstore/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MainApps());

class MainApps extends StatefulWidget {
  const MainApps({super.key});

  @override
  State<MainApps> createState() => _MainAppsState();
}

class _MainAppsState extends State<MainApps> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: home,
      initialRoute: RouteDilShoesStore.splash,
      routes: {
        RouteDilShoesStore.splash: (context) => const SplashScreen(),
        RouteDilShoesStore.signin: (context) => const SignInScreen(),
        RouteDilShoesStore.signup: (context) => const SignUpScreen(),
      },
    );
  }
}
