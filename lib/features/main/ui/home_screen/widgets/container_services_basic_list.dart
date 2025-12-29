import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/AppDataList.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../logic/basic_services_cubit/basic_services_cubit.dart';


class ContainerServicesBasicList extends StatelessWidget {
  const ContainerServicesBasicList({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<BasicServicesCubit>();
    final services = AppData.specificServicesHomePage(context);
    return SizedBox(
      height: 98,
      child: ListView.separated(
        controller: cubit.scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: services.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final service = services[index];
          final isSelected = index == cubit.selectedIndex;
          return GestureDetector(
            onTap: () {
              cubit.setSelectedIndex(index);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: isSelected
                    ? AppColors.lightOrangeColor
                    : AppColors.whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.darkColor.withAlpha(30),
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    CircleAvatar(backgroundColor: isSelected ? AppColors.whiteColor : AppColors.darkGreyColor.withAlpha(130), radius: 24,
                      child: Image.asset(service.image!, height: 38, width: 38, fit: BoxFit.contain,),),
                    const SizedBox(width: 8),
                    TextInAppWidget(text: service.title, textSize: 16, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: isSelected ? AppColors.whiteColor : AppColors.darkGreyColor,),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
