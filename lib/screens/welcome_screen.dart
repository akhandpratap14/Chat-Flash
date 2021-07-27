import 'package:chatflash/screens/login_screen.dart';
import 'package:chatflash/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chatflash/components/roundedButton.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    animation = ColorTween(begin: Colors.blueAccent, end: Colors.white)
        .animate(controller);
    controller.forward();

    controller.addListener(() {
      setState(() {});
      print(animation.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                TextLiquidFill(
                  text: 'Flash Chat',
                  boxBackgroundColor: animation.value,
                  waveColor: Colors.blueAccent,
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            roundedButton(
              colour: Colors.lightBlueAccent,
              tittle: 'Log in',
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            roundedButton(
              colour: Colors.blueAccent,
              tittle: 'Register',
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
