import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:culibrary/color_themes.dart';
import 'package:culibrary/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(microseconds: 800))
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Navigator.of(context).pushReplacement(PageTransition(
              child: const HomePage(), type: PageTransitionType.bottomToTop));
          Timer(const Duration(microseconds: 400), () {
            setState(() {
              _animationController.reset();
            });
          });
        }
      });
    Timer(const Duration(seconds: 3), () {
      setState(() {
        _animationController.forward();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: firstColor,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 220),
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/logo.jpg'), fit: BoxFit.fill)),
            ),
            const SizedBox(height: 30),
            AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText('𝐂𝐔 𝐋𝐈𝐁𝐑𝐀𝐑𝐘',
                    textStyle: const TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                    speed: const Duration(milliseconds: 150))
              ],
              isRepeatingAnimation: false,
              repeatForever: false,
              displayFullTextOnTap: false,
            )
          ],
        ),
      ),
    );
  }
}
