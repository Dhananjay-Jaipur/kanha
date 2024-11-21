import 'package:flutter/material.dart';
import 'package:kanha/pages/home/components/brands.dart';
import 'package:kanha/pages/home/components/cirtifications.dart';
import 'package:kanha/pages/home/components/contact.dart';
import 'package:kanha/pages/home/components/products.dart';
import 'package:kanha/pages/home/components/start.dart';
import 'package:kanha/pages/home/components/trust.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  dynamic MyAppbar(size) {
    if (size >= 800) {
      return AppBar(
        backgroundColor: const Color(0xFF0b1960),
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Image.asset(
            'assets/logo2.png', // Path to your logo image
          ),
        ),
        title: const Text(
          'Kanha',
          style: TextStyle(fontSize: 35, color: Colors.white),
        ),
        actions: const [
          Text(
            'brands    ',
            style: TextStyle(fontSize: 17, color: Colors.white60),
          ),
          Text(
            'manufacturing    ',
            style: TextStyle(fontSize: 17, color: Colors.white60),
          ),
          Text(
            'about    ',
            style: TextStyle(fontSize: 17, color: Colors.white60),
          ),
          Text(
            'more    ',
            style: TextStyle(fontSize: 17, color: Colors.white60),
          ),
        ],
      );
    } else {
      return AppBar(
        backgroundColor: const Color(0xFF0b1960),
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Image.asset(
            'assets/logo2.png', // Path to your logo image
          ),
        ),
        title: const Text(
          'Kanha',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0b1960),
      appBar: MyAppbar(MediaQuery.of(context).size.width),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Start(),
            Brands(),
            Trust(), 
            Cirtifications(),     
            Products(),
            Contact(),
          ],
        ),
      ),
    );
  }
}
