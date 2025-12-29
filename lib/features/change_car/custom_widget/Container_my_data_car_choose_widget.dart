import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/change_car/my_car_data_car_change/logic/car_selection_data_select_car_cubit.dart';
import '../../../../../features/change_car/my_car_data_car_change/logic/car_selection_data_select_car_state.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/colors.dart';


class ContainerMyDataCarChooseWidget extends StatefulWidget {
  final int index;
  final String imageSrc;
  final String title;
  final String subTitle;

  const ContainerMyDataCarChooseWidget({
    Key? key,
    required this.index,
    required this.imageSrc,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  State<ContainerMyDataCarChooseWidget> createState() => _ContainerMyDataCarChooseWidgetState();
}

class _ContainerMyDataCarChooseWidgetState extends State<ContainerMyDataCarChooseWidget> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarSelectionDataSelectCarCubit, CarSelectionDataSelectCarState>(
      buildWhen: (previous, current) =>
      current is CarSelected || current is CarInitial,
      builder: (context, state) {
        final isPrimary =
            state is CarSelected && (state).index == widget.index;

        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: isPrimary ? Border.all(color: AppColors.redColor): null,
            color: AppColors.transparent,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Image.asset(widget.imageSrc, width: 50),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextInAppWidget(
                            text: widget.title,
                            textSize: 12,
                            fontWeightIndex: FontSelectionData.regularFontFamily,
                            textColor: AppColors.darkColor,
                          ),
                          const SizedBox(height: 5),
                          TextInAppWidget(
                            text: widget.subTitle,
                            textSize: 12,
                            fontWeightIndex: FontSelectionData.regularFontFamily,
                            textColor: isPrimary?AppColors.orangeColor:AppColors.greyColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              GestureDetector(
                onTap: () {
                  final current = context.read<CarSelectionDataSelectCarCubit>().state;
                  if (current is CarSelected && (current).index == widget.index) {
                    context.read<CarSelectionDataSelectCarCubit>().reset();
                  } else {
                    context.read<CarSelectionDataSelectCarCubit>().select(widget.index);
                  }
                },
                child: Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  decoration: BoxDecoration(
                    color: isPrimary?AppColors.redColor.withOpacity(0.1):AppColors.blackColor44.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: isPrimary?AppColors.redColor.withOpacity(0.1)
                          :AppColors.darkColor
                    ),
                  ),
                  child: TextInAppWidget(
                    text: isPrimary
                        ? AppLanguageKeys.setAsPrimaryCar
                        : AppLanguageKeys.replaceCarAsAccount,
                    textSize: 7,
                    fontWeightIndex: FontSelectionData.regularFontFamily,
                    textColor:isPrimary? AppColors.orangeColor:AppColors.blackColor44
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
