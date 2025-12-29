import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../logic/search_cubit/search_cubit.dart';
import '../../../logic/search_cubit/search_state.dart';
import 'appbar_profile_and_location.dart';
import 'appbar_profile_and_notification.dart';

class ContainerHomePageAppBar extends StatefulWidget {
  const ContainerHomePageAppBar({super.key});
  @override
  State<ContainerHomePageAppBar> createState() =>
      _ContainerHomePageAppBarState();
}

class _ContainerHomePageAppBarState extends State<ContainerHomePageAppBar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 180,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImageKeys.background),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              AppColors.darkColor.withAlpha(120),
              BlendMode.srcOver,
            ),
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
        child: Center(
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: BlocBuilder<SearchCubit, SearchState>(
                  builder: (context, state) {
                    if (state is SearchInitial || state is SearchEmpty) {
                      return const AppbarProfileAndNotification();
                    } else {
                      return const AppbarProfileAndLocation();
                    }
                  },
                ),
              ),

              SizedBox(
                width: 385,
                child: TextFormFieldWidget(

                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  isColumn: false,
                  textFormController: _searchController,
                  textSize: 14,
                  textColor: AppColors.darkGreyColor,
                  fillColor: AppColors.whiteColor,
                  borderColor: AppColors.lightGreyColor,
                  fontWeightIndex: FontSelectionData.semiBoldFontFamily,
                  isValidator: true,
                  prefixIcon: AppImageKeys.searchOrangeIcon,
                  suffixIcon: Icons.close,
                  suffixOnPressed: () {
                    _searchController.clear();
                  },
                  hintText: AppLanguageKeys.searchPlaceholder,
                  hintTextColor: AppColors.darkGreyColor,
                  hintTextSize: 14,
                  onChanged: (query) => context.read<SearchCubit>().search(query)
                ),
              ),
            ],
          ),
        ),

    );
  }
}
