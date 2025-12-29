
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

import '../../../logic/basic_services_cubit/basic_services_cubit.dart';
import 'button_search_filter.dart';

import 'first_show.dart';
import 'other_features.dart';
import 'services_widget.dart';
import 'warranty_status.dart';


class FilterDialog extends StatelessWidget {
  const FilterDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<BasicServicesCubit>();
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 799,
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              spacing: 22,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const TextInAppWidget(text:  AppLanguageKeys.filter, textSize: 18, textColor: AppColors.darkColor, fontWeightIndex: FontSelectionData.regularFontFamily,),
                    const Spacer(),
                    IconButton(onPressed: () {Navigator.pop(context);}, icon: const Icon(Icons.close))
                  ],
                ),
                ServicesWidget(cubit: cubit,),
                FirstShow(cubit: cubit,),
                OtherFeatures(cubit: cubit,),
                WarrantyStatus(cubit: cubit),
                const Spacer(),
                Center(child: ButtonSearchFilter(cubit:cubit)),

              ],
            ),

        ),
      ),
    );
  }
}


