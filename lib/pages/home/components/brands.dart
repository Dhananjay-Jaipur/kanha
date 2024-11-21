import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Brands extends StatelessWidget {
  const Brands({super.key});

  Widget Desktop() {
    return Column(
      children: [
        SizedBox(
          height: Get.height * 0.2,
        ),
        SizedBox(
          height: Get.height * 0.2,
          child: Row(
            children: [
              Image.asset("assets/1-Left01.png"),
              Spacer(),
              Text(
                "❤️ Our Brands ❤️",
                style: TextStyle(color: Colors.white, fontSize: 44),
              ),
              Spacer(),
              Image.asset("assets/1-Right01.png"),
            ],
          ),
        ),
        SizedBox(
          height: Get.height * 0.05,
        ),
        SizedBox(
          height: Get.height * 0.3,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Sweet-dough-logo.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/tansukh-logo.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/logo.png"),
              ),
            ],
          ),
        ),
        SizedBox(
          height: Get.height * 0.05,
        ),
      ],
    );
  }

  Widget Mobile() {
    return Column(
      children: [
        SizedBox(
          height: Get.height * 0.1,
        ),
        SizedBox(
          width: Get.width * 0.9,
          child: Row(
            children: [
              Expanded(child: Image.asset("assets/1-Left01.png")),
              Spacer(),
              Text(
                "❤️ Our Brands ❤️",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Spacer(),
              Expanded(child: Image.asset("assets/1-Right01.png")),
            ],
          ),
        ),
        SizedBox(
          height: Get.height * 0.05,
        ),
        SizedBox(
          height: Get.height * 0.2,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Sweet-dough-logo.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/tansukh-logo.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/logo.png"),
              ),
            ],
          ),
        ),
        SizedBox(
          height: Get.height * 0.05,
        ),
      ],
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
