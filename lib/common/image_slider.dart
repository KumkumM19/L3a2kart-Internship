import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

import '../constants/colors.dart';
import '../constants/lists.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.32,
          child: PageView.builder(
            itemCount: imageList.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                // height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                  child: Image(image: AssetImage(imageList[index]), fit: BoxFit.fill),
                ),
              );
            },
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: FractionallySizedBox(
            widthFactor: 0.17, // Adjust the width factor as desired
            child: Container(
              height: 23,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                color: white1,
              ),
              child: DotsIndicator(
                dotsCount: imageList.length,
                position: currentIndex.toDouble(),
                decorator: const DotsDecorator(
                  activeColor: Colors.blue,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
