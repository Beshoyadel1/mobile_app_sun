import 'package:flutter/material.dart';
import '../../../../../features/change_car/custom_widget/container_image_with_two_text.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';

class ListCarCrV extends StatelessWidget {
  const ListCarCrV({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: List.generate(
        cars.length,
            (i) => ContainerImageWithTwoText(
              imageSrc: cars[i]['image']!,
              title: cars[i]['title']!,
              subTitle: cars[i]['sub']!,
            ),
      ),
    );
  }
}
final cars = [
  {
    'title': AppLanguageKeys.myCar,
    'image': AppImageKeys.car2,
    'sub': 'CR - V'
    ,
  },
  {
    'title': 'التعاونية',
    'image': AppImageKeys.company3,
    'sub': AppLanguageKeys.comprehensiveInsurance
  },
  {
    'title': AppLanguageKeys.carBills,
    'image': AppImageKeys.test_car,
    'sub': '11 فاتورة ',
  },
];