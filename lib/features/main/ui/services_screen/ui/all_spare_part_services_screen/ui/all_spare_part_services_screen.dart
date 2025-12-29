import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../core/AppDataList.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../welcome/widgets/appbar_profile.dart';
import '../../../../../logic/category_cubit.dart';
import '../../../../../models/services_center_model.dart';

import '../../../../home_screen/widgets/action_filter.dart';
import '../../../../main_screen.dart';
import '../../../../widgets/custom_car_drop_down.dart';
import '../../../../widgets/custom_white_circle.dart';
import '../../spare_part_details_screen/ui/spare_part_details_screen.dart';
import '../widgets/spare_part_card.dart';



class AllSparePartServicesScreen extends StatelessWidget {
  AllSparePartServicesScreen({super.key, required this.center});
  final spareParts = AppData.spareParts;
  final ServiceCenter center;
  final List<String>
  categories = [AppLanguageKeys.all, AppLanguageKeys.tires, AppLanguageKeys.accessories, AppLanguageKeys.internalParts,AppLanguageKeys.accessories, AppLanguageKeys.internalParts,];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CategoryCubit(),
      child: Scaffold(
        appBar: AppbarProfile(
          image: AppImageKeys.notification,
          title: AppLanguageKeys.spareParts,
          showDefaultProfileImage: true,
          pageToNavigate: const MainScreen(),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20), Row(
                  children: [
                    CustomCarDropdown(
                      textColor: AppColors.darkColor,
                      iconColor: AppColors.orangeColor,
                    ),
                    const Spacer(),
                    CustomWhiteCircle(
                      typeWidget: Image.asset(
                        AppImageKeys.searchOrangeIcon,
                        height: 21,
                        width: 21,
                      ),
                    ),
                    const SizedBox(width: 20),
                    ActionFilter(),
                  ],
                ),
              const SizedBox(height: 16),
              BlocBuilder<CategoryCubit, int>(
                builder: (context, selectedIndex) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(categories.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: CustomContainer(
                            text: categories[index],
                            isSelected: selectedIndex == index,
                            onTap: () {
                              context.read<CategoryCubit>().selectCategory(index);
                            },),);}),),);},),
              const SizedBox(height: 16),
              Expanded(
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: spareParts.map((part) {
                    return SizedBox(
                      height: 161,
                      width: 127,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            NavigateToPageWidget(
                              SparePartDetailsScreen(part: part, center: center,),),);},
                        child: SparePartCard(part: part),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
