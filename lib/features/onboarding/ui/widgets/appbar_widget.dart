
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/language/language_cubit/language_cubit.dart';
import '../../../../core/language/language_cubit/language_states.dart';
import '../../../../core/language/language_model.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/text_styles.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<LanguageCubit, LanguageStates>(
            builder: (context, stateLang) {
              var langCubit = LanguageCubit.get(context);
              return DropdownButton<LanguageModel>(
                icon: const Icon(Icons.language, color: AppColors.whiteColor),
                value: langCubit.languageDropDownValue,
                items: langCubit.languageItemsDropDown.map((lang) {
                  return DropdownMenuItem<LanguageModel>(
                    value: lang,
                    child:
                    TextInAppWidget(
                      text:  lang.enName ?? "",
                      textSize: 10,
                      fontWeightIndex: FontSelectionData.boldFontFamily,
                      textColor: AppColors.lightOrangeColor,
                    ),
                  );
                }).toList(),
                onChanged: (newLang) {
                  if (newLang != null) {
                    langCubit.languageDropDownValue = newLang;
                    langCubit.changeAllAppLanguage(newLang.number!);
                  }
                },
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

