import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../../../../core/setup_git_it.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../../welcome/logic/select_car_cubit/select_car_cubit.dart';
import '../../../../../../welcome/logic/select_car_cubit/select_care_state.dart';

import '../../../../../../welcome/widgets/appbar_profile.dart';
import '../../../../../../welcome/widgets/botton_sheet.dart';
import '../../../../../../welcome/widgets/car_category.dart';
import '../../../../../../welcome/widgets/car_category_list.dart';
import '../../../../../../welcome/widgets/car_name_list.dart';
import '../../../../../../welcome/widgets/car_name_listview.dart';
import 'details_add-car_screen.dart';

class AddCarScreen extends StatelessWidget {
  const AddCarScreen({super.key, this.textController});
  final TextEditingController? textController ;


  @override
  Widget build(BuildContext context) {
  return  BlocProvider(
        create: (_) => getIt<SelectedCarCubit>(),
        child: Builder(
            builder: (context) {
              return Scaffold(
        appBar: AppbarProfile(
          image: AppImageKeys.notification,
          title: AppLanguageKeys.carAuction,
          showDefaultProfileImage: true,

        ),
                  bottomSheet:BottonSheet(
                    containerHeight: 100,
                    buttonWidget: CustomContainer(
                      isSelected: true, onTap: () {
                      Navigator.of(context).push(
                        NavigateToPageWidget(const  DetailsAddCarScreen()),
                      );
                    },
                      typeWidget: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 140.0),
                        child: TextInAppWidget(text: AppLanguageKeys.next, textSize:18, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.whiteColor,),
                      ),
                      ),
                    onTap: (){
                    },),
        body:Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 32,),
                TextInAppWidget(text:AppLanguageKeys.showCarForSale, textSize: 15.7, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),
                const SizedBox(height: 32,),
                CarCategory(),
                const SizedBox(height: 24,),
                BlocBuilder<SelectedCarCubit, SelectedCarState>(
                  builder: (context, state) {
                    return CustomCardCar(heightSizeBox: 88, typeModel: CarNameList, heightContainer: 88, widthContainer: 88, heightImage: 30, widthImage: 34, selectedCarName: state.selectedCarName, scrollDirection: Axis.horizontal,  );
                  },),
                const SizedBox(height: 32,),
                TextInAppWidget(text:AppLanguageKeys.chooseTheCategory, textSize: 15.7, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),
                const SizedBox(height: 12),
                Builder(
                    builder: (context) {
                      return   BlocBuilder<SelectedCarCubit, SelectedCarState>(
                        builder: (context, state) {
                          return CustomCardCar(heightSizeBox: 88, typeModel: CarCategoryList, heightContainer: 88, widthContainer: 111, heightImage: 32, widthImage: 80, selectedCarName: state.selectedCarName,    scrollDirection: null,);},);
                    }),
                const SizedBox(height: 32,),
                TextInAppWidget(text:AppLanguageKeys.modelYear, textSize: 15.7, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),
                const SizedBox(height: 12,),
                TextFormFieldWidget(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  textFormController: textController ?? TextEditingController(),
                  hintTextSize: 12,
                  hintTextColor: AppColors.greyColor,
                  suffixIcon: Icons.keyboard_arrow_down_outlined,
                  prefixIconWidth: 19,
                  prefixIconHeight: 19,
                  textSize: 14,
                  textColor: AppColors.darkGreyColor,
                  isColumn: false,
                  fillColor: AppColors.whiteColor,
                  borderColor: AppColors.lightGreyColor,
                  fontWeightIndex: FontSelectionData.semiBoldFontFamily,
                  isValidator: true,
                ),
                const SizedBox(height: 132,),
            
              ]
            ),
          ),
        )
              );}));
  }
}
