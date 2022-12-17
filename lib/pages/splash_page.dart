// ignore_for_file: prefer_const_constructors
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Timer(Duration(seconds: 2), (){
      Navigator.pushNamedAndRemoveUntil(context, '/onboarding', (route) => false);
    });
    // ignore: todo
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kRedbgColor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 98,
              height: 82,
              margin: EdgeInsets.only(right:16),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/logobubur1.png'
                     ),
                    ),
              ),
            ),
            Text(
              "Bubur Gowes",
              style: whiteGreyTextStyle.copyWith(
                fontSize: 36,
                fontWeight: bold,
                ),
              ),
          ],
        ),
        
        ),
        
    );
  }
}