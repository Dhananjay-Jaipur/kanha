import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Backend extends GetxController {

  final currentTabs = [
    "assets/product2.png",
    "assets/product1.png",    
    "assets/product3.png",
    "assets/product5.jpg",
    "assets/product4.png",
  ].obs;

  YoutubePlayerController ytController = YoutubePlayerController(
      initialVideoId: "nU3BQGhcLTM",
    );

}
