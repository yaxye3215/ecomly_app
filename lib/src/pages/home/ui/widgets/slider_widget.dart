
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/app_utils.dart';

class SlidersWidget extends StatelessWidget {
  const SlidersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        viewportFraction: 1,
        enlargeCenterPage: true,
      ),
      itemCount: AppUtils.sliders.length,
      itemBuilder:
          (BuildContext context, int itemIndex, int pageViewIndex) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            AppUtils.sliders[itemIndex],
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
