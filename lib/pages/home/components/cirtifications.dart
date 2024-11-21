import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cirtifications extends StatelessWidget {
  const Cirtifications({super.key});

  Widget Desktop() {
    return Column(
      children: [
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
                child: Image.asset("assets/fssai.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/FDA.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/iso.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/made-in-india.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Brcgs.png"),
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
          height: Get.height * 0.05,
        ),
        SizedBox(
          height: Get.height * 0.12,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/fssai.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/FDA.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/iso.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/made-in-india.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Brcgs.png"),
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
