import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'loginscreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToLogin();
  }

  Future<void> _navigateToLogin() async {
    await Future.delayed(Duration(seconds: 7), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          TweenAnimationBuilder(
            tween: ColorTween(begin: Colors.yellow[100], end: Colors.amber[200]),
            duration: Duration(seconds: 5),
            builder: (context, Color? color, child) {
              return Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [color!, color.withOpacity(0.6)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              );
            },
            onEnd: () {
              setState(() {});
            },
          ),
          Center(
            child: Lottie.asset(
              'animations/coffee_animation.json', // Add your Lottie animation file here
              width: 300,
              height: 300,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
