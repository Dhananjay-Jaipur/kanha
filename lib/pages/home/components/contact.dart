import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.black45, // Adjust background color as needed
      child: Column(
        children: [          
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Footer Column 1: Logo and Description
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to the provided URL
                        print("Navigate to https://kanha.co/");
                      },
                      child: Image.asset(
                        "assets/logo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      "Our emphasis has always been on high quality products.\nThe quality process goes through the 3P cycle.",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                ),
              ),

              SizedBox(width: 10,),

              // Footer Column 2: Links
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Our Company",
                      style: TextStyle(
                        fontSize: 16, color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    _buildFooterLink("Manufacturing", "https://kanha.co/manufacturing/"),
                    _buildFooterLink("International", "https://kanha.co/international/"),
                    _buildFooterLink("Career", "https://kanha.co/career/"),
                    _buildFooterLink("Media Center", "https://kanha.co/media-center/"),
                    _buildFooterLink("Contact Us", "https://kanha.co/contact-us/"),
                  ],
                ),
              ),

              // Footer Column 3: Contact Information
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Contact us",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      "HEAD. OFFICE:\nSanwaria Sweets Private Limited\nJ5, Himmat Nagar, Near Gopalpura Flyover, Tonk Road, Jaipur 302018 (Rajasthan) India",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      "+91-141-2719108, +91-9785401326",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      "info@kanha.co | exports@kanha.co",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      children: [
                        _buildSocialIcon(Icons.facebook, "https://www.facebook.com/kanhafmcg/"),
                        _buildSocialIcon(Icons.linked_camera, "https://www.linkedin.com/company/kanha-fmcg/"),
                        _buildSocialIcon(Icons.camera_alt, "https://www.instagram.com/kanhafmcg/"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFooterLink(String text, String url) {
    return GestureDetector(
      onTap: () {
        print("Navigate to $url");
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Text(
          text,
          style: const TextStyle(fontSize: 14, color: Colors.blue),
        ),
      ),
    );
  }

  Widget _buildSocialIcon(IconData icon, String url) {
    return GestureDetector(
      onTap: () {
        print("Navigate to $url");
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Icon(
          icon,
          size: 24,
          color: Colors.blue,
        ),
      ),
    );
  }
}
