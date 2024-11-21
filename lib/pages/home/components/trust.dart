import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Trust extends StatelessWidget {
  const Trust({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: double.infinity,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/baground.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: Get.height * 0.05,
          ),
          SizedBox(
            height: Get.height * 0.1,
            child: AnimatedTextKit(
              animatedTexts: [
                FadeAnimatedText(
                  "Quality,      ",
                  textStyle: TextStyle(color: Colors.white54, fontSize: 30),
                ),
                FadeAnimatedText(
                  "Quality, Taste      ",
                  textStyle: TextStyle(color: Colors.white54, fontSize: 30),
                ),
                FadeAnimatedText(
                  "Quality, Taste, Excellence!!!!      ",
                  textStyle: TextStyle(color: Colors.white54, fontSize: 30),
                ),
              ],
              repeatForever: true,
            ),
          ),
          Container(
            height: Get.height * 0.7,
            width: Get.width * 0.3,
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              image: DecorationImage(
                image: AssetImage('assets/about.jpg'),
                fit: BoxFit.fill,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white70,
                  spreadRadius: 7,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
