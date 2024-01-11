import 'package:flash_chat_flutter/screens/login_screen.dart';
import 'package:flash_chat_flutter/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat_flutter/components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String route = '/';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? animation;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller!);
    controller!.forward();
    /*   animation = CurvedAnimation(parent: controller!, curve: Curves.decelerate);
    controller!.forward();
    controller!.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
        controller!.forward();
      } else if (status == AnimationStatus.completed) {
        controller!.reverse(from: 1.0);
      }
    });*/
    controller!.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation!.value,
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
                AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Flash Chat',
                        textStyle: const TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.w900,
                        ),
                        speed: Duration(milliseconds: 100),
                      ),
                    ],
                    totalRepeatCount: 2,
                    pause: const Duration(milliseconds: 1000))
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              onPressed: () {
                setState(() {
                  Navigator.pushNamed(context, LoginScreen.route);
                });
              },
              buttonColor: Colors.lightBlueAccent,
              buttonText: 'Log In',
            ),
            RoundedButton(
              onPressed: () {
                setState(() {
                  Navigator.pushNamed(context, RegistrationScreen.route);
                });
              },
              buttonColor: Colors.blueAccent,
              buttonText: 'Register',
            ),
          ],
        ),
      ),
    );
  }
}

/*Text(
'Flash Chat',
style: TextStyle(
fontSize: 45.0,
fontWeight: FontWeight.w900,
),
),*/
