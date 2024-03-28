import 'package:flutter/material.dart';
import 'package:bookapp/common/color_extension.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Image.asset("assets\img\welcome_bg.png",
            width: media.width, height: media.height, fit: BoxFit.cover),
        SafeArea(
          child: Container(
            width: media.width,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(
                  height: media.width * 0.25,
                ),
                Text(
                  "Books For\nEvery Taste.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: TColor.primary,
                      fontSize: 35,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: media.width * 0.25,
                ),
                MaterialButton(
                  onPressed: () {},
                  textColor: Colors.white,
                  color: TColor.primary,
                  height: 50,
                  minWidth: double.maxFinite,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text(
                    "Sign in",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                 MaterialButton(
                  onPressed: () {},
                  textColor: Colors.white,
                  color: TColor.primary,
                  height: 50,
                  minWidth: double.maxFinite,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text(
                    "Sign up",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
