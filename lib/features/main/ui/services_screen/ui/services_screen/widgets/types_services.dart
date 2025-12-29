import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system_app/features/main/models/services_item.dart';

import '../../../../../../../core/AppDataList.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../models/specific_service_model.dart';


class TypesServices extends StatefulWidget {
  const TypesServices({super.key, this.title, required this.onTypeSelected, required this.services});

  final String? title;
  final List<SpecificServiceModel> services;
  final Function(int) onTypeSelected;

  @override
  State<TypesServices> createState() => _TypesServicesState();
}

class _TypesServicesState extends State<TypesServices> {




  @override
  Widget build(BuildContext context) {
    final services = widget.services;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextInAppWidget(
            text: widget.title ?? AppLanguageKeys.variousServices,
            textSize: 16,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor: AppColors.darkGreyColor,
          ),
          const SizedBox(height: 25),
          Wrap(
            spacing: 8,
            runSpacing: 16,
            children: List.generate(services.length, (index) {
              final service = services[index];
              return GestureDetector(
                onTap: () {
                  widget.onTypeSelected(index);
                  service.onTap();
                },
                child: SizedBox(
                  height: 102,
                  width: 80,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(service.image!, width: 51, height: 51),
                        const SizedBox(height: 6),
                        TextInAppWidget(
                          text: service.title,
                          textSize: 12,
                          fontWeightIndex: FontSelectionData.regularFontFamily,
                          textColor: AppColors.darkColor,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
