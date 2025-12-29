import 'package:flutter/material.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';

import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../models/slider_model.dart';



class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  final PageController _controller = PageController();
  int _currentIndex = 0;


  final List<SliderModel> items = [
    SliderModel(
      image: AppImageKeys.sliderImage1,
      title: AppLanguageKeys.tireSpareParts,
      description: AppLanguageKeys.discount50,
    ),
    SliderModel(
      image: AppImageKeys.sliderImage1,
      title: AppLanguageKeys.tireSpareParts,
      description: AppLanguageKeys.discount50,
    ),
    SliderModel(
      image: AppImageKeys.sliderImage1,
      title: AppLanguageKeys.tireSpareParts,
      description: AppLanguageKeys.discount50,
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 156,
          width: 385,
          child: PageView.builder(
            controller: _controller,
            itemCount: items.length,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        items[index].image,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 20,left: 20,top: 79),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextInAppWidget(text: items[index].title, textSize: 20, fontWeightIndex: FontSelectionData.boldFontFamily, textColor: AppColors.whiteColor,),
                              TextInAppWidget(text:      items[index].description, textSize: 18, fontWeightIndex: FontSelectionData.boldFontFamily, textColor: AppColors.veryLightOrangeColor,),

                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                items.length,
                                    (index) => Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 4),
                                  width: _currentIndex == index ? 12 : 8,
                                  height: _currentIndex == index ? 12 : 8,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: _currentIndex == index ? AppColors.veryLightOrangeColor: AppColors.lightGreyColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
              );
            },
          ),
        ),

      ],
    );
  }
}


