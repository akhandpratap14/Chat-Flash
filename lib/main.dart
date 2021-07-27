import 'package:flutter/material.dart';
import 'package:chatflash/screens/welcome_screen.dart';
import 'package:chatflash/screens/login_screen.dart';
import 'package:chatflash/screens/registration_screen.dart';
import 'package:chatflash/screens/chat_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen()
      },
    );
  }
}
