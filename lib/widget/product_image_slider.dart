import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class productItemSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorBackgroundColor: Colors.white,
      indicatorColor: Colors.redAccent,
      height: 300,
      autoPlayInterval: 3000,
      indicatorRadius: 4,
      isLoop: true,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("images/icon1.png"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("images/icon2.png"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("images/icon3.png"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("images/icon4.png"),
        ),
      ],
    );
  }
}
