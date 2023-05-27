import 'package:flutter/material.dart';
import 'package:tec_blog/my_colors.dart';
import 'gen/assets.gen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tec_blog/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  //initial state for wite 3 seconds in splash screen and navigator to MainScreen

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => MainScreen()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: Image.asset(Assets.images.logo.path).image,
                height: 64,
              ),
              const SizedBox(height: 32),
              const SpinKitFadingCube(
                color: SolidColors.primaryColor,
                size: 50.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
