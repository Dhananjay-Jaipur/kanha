import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kanha/backend/backend.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class Products extends StatelessWidget {
  Products({super.key});

  final Backend controller = Get.put(Backend());
  PageController scrollController = PageController();

  Widget Mobile() {
    return Column(
      children: [
        
        Text(
          "Categories  🛒",
          style: TextStyle(color: Colors.white, fontSize: 44),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: Get.height * 0.04,
        ),
        SizedBox(
          height: Get.height * 0.5,
          child: PageView(
            controller: scrollController,
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                    image: AssetImage(controller.currentTabs[0]),
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
              Container(
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                    image: AssetImage(controller.currentTabs[1]),
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
              Container(
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                    image: AssetImage(controller.currentTabs[2]),
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
              Container(
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                    image: AssetImage(controller.currentTabs[3]),
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
              Container(
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                    image: AssetImage(controller.currentTabs[4]),
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
        ),
        SmoothPageIndicator(
          controller: scrollController,
          count: 5,
          effect: ExpandingDotsEffect(
            dotWidth: 8,
            dotHeight: 8,
            spacing: 5.0,
            activeDotColor: Colors.white,
          ),
        ),
        SizedBox(
          height: Get.height * 0.05,
        ),
      ],
    );
  }

  Widget Desktop() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: Get.width * 0.25,
          child: const Text(
            """\n\nTransforming FMCG, food, and hospitality through innovation, delivering healthy, hygienic, and top-quality offerings.""",
            style: TextStyle(color: Colors.white54, fontSize: 20),
            textAlign: TextAlign.center,
            maxLines: 22,
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: Get.height * 0.05,
            ),
            Text(
              "Categories  🛒",
              style: TextStyle(color: Colors.white, fontSize: 44),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: Get.height * 0.04,
            ),
            SizedBox(
              height: Get.height * 0.6,
              width: Get.width * 0.35,
              child: PageView(
                controller: scrollController,
                children: [
                  Container(
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: DecorationImage(
                        image: AssetImage(controller.currentTabs[0]),
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
                  Container(
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: DecorationImage(
                        image: AssetImage(controller.currentTabs[1]),
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
                  Container(
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: DecorationImage(
                        image: AssetImage(controller.currentTabs[2]),
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
                  Container(
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: DecorationImage(
                        image: AssetImage(controller.currentTabs[3]),
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
                  Container(
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: DecorationImage(
                        image: AssetImage(controller.currentTabs[4]),
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
            ),
            SmoothPageIndicator(
              controller: scrollController,
              count: 5,
              effect: ExpandingDotsEffect(
                dotWidth: 8,
                dotHeight: 8,
                spacing: 5.0,
                activeDotColor: Colors.white,
              ),
            ),
            SizedBox(
              height: Get.height * 0.05,
            ),
          ],
        ),
        SizedBox(
          width: Get.width * 0.25,
          child: const Text(
            """\n\nDedicated to delivering fresh, wholesome food and premium services, enhancing quality of life for all.""",
            style: TextStyle(color: Colors.white54, fontSize: 20),
            textAlign: TextAlign.center,
            maxLines: 22,
          ),
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
