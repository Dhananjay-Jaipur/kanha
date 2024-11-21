import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  Widget Desktop() {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 5),
      padding: const EdgeInsets.only(top: 45),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 55),
            height: Get.height / 3,
            width: Get.width / 2.2,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: const DecorationImage(
                image: AssetImage("assets/Loader.gif"),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54.withOpacity(0.5),
                  spreadRadius: 10,
                  blurRadius: 15,
                  offset:
                      const Offset(3, 3), // changes position of shadow (x,y)
                ),
              ],
            ),
          ),
          SizedBox(
            width: Get.height / 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    "खम्मा घणी 🙏",
                    textStyle: TextStyle(color: Colors.white, fontSize: 36),
                    speed: Duration(milliseconds: 200),
                  ),
                ],
                totalRepeatCount: 1,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: Get.width * 0.4,
                child: const Text(
                  """In a world where flavour reigns supreme, Kanha Group emerged as a force that believes in quality, innovation and originality. Our journey? Anything but ordinary. Started amid the sands and spices of Rajasthan, we believe in serving you with the finest products for you to experience ‘authenticity’ at its best. \n\n At Kanha, authenticity meets originality, and every meal becomes a masterpiece. Join us in a delightful adventure where tradition and innovation come hand in hand, where quality is our canvas, and your palate is the masterpiece. Savour the extraordinary, one bite at a tim""",
                  style: TextStyle(color: Colors.white54, fontSize: 17),
                  textAlign: TextAlign.center,
                  maxLines: 22,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget Mobile() {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(22),
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: const DecorationImage(
                  image: AssetImage("assets/Loader.gif"),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 15,
                    offset:
                        const Offset(3, 3), // changes position of shadow (x,y)
                  ),
                ],
              ),
            ),
            AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                  "खम्मा घणी 🙏",
                  textStyle: TextStyle(color: Colors.white, fontSize: 36),
                  speed: Duration(milliseconds: 200),
                ),
              ],
              totalRepeatCount: 1,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: Get.width * 0.8,
              child: const Text(
                """In a world where flavour reigns supreme, Kanha Group emerged as a force that believes in quality, innovation and originality. Our journey? Anything but ordinary. Started amid the sands and spices of Rajasthan, we believe in serving you with the finest products for you to experience ‘authenticity’ at its best.""",
                style: TextStyle(color: Colors.white54, fontSize: 17),
                textAlign: TextAlign.center,
                maxLines: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 900) {
      return Desktop();
    } else {
      return Mobile();
    }
  }
}
