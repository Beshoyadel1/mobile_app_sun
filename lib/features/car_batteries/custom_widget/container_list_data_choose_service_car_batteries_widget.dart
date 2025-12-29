import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/car_batteries/choose_service_car_batteries/logic/check_box_car_batteries_cubit.dart';
import '../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';


class ContainerListDataChooseServiceCarBatteriesWidget extends StatelessWidget {
  final String imagePath,title,price;
  const ContainerListDataChooseServiceCarBatteriesWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(5),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(
            color: AppColors.transparent
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 5,
            children: [
              CircleAvatar(
                backgroundColor: AppColors.pinkColor,
                radius: 20,
                child: Image.asset(imagePath,width: 25,),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  TextInAppWidget(
                    text: title,
                    textSize: 12,
                    fontWeightIndex: FontSelectionData.mediumFontFamily,
                    textColor: AppColors.greyColor,
                  ),
                  RowNumberCoinWidget(
                      numberText: price,
                      sizeText: 12,
                      imageSrc: AppImageKeys.coin
                  )
                ],
              )
            ],
          ),
          BlocProvider(
            create: (_) => CheckBoxCarBatteriesCubit(),
            child: BlocBuilder<CheckBoxCarBatteriesCubit, bool>(

              builder: (context, isChecked) {
                return Checkbox(
                  value: isChecked,
                  activeColor: AppColors.orangeColor,
                  onChanged: (value) {
                    context.read<CheckBoxCarBatteriesCubit>().toggle(value!);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
