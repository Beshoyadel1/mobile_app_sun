import 'package:flutter/cupertino.dart';
import '../../../../../features/insurance_new/insurance_offers_new/ui/screens/row_image_text_insurance_new_offers_part_one.dart';
import '../../../../../features/insurance_new/insurance_offers_new/ui/screens/row_image_text_insurance_new_offers_part_two.dart';

class SecondRowInsuranceNewOffers extends StatelessWidget {
  const SecondRowInsuranceNewOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RowImageTextInsuranceNewOffersPartOne(),
        RowImageTextInsuranceNewOffersPartTwo()
      ],
    );
  }
}
