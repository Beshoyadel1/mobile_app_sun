import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system_app/features/auth/otp/ui/otp_screen.dart';
import '../../../core/language/language_constant.dart';
import '../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../core/setup_git_it.dart';
import '../../../core/theming/assets.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/fonts.dart';
import '../../../core/theming/text_styles.dart';
import '../../auth/login/ui/login_screen.dart';
import '../logic/select_car_cubit/select_car_cubit.dart';
import '../logic/select_car_cubit/select_care_state.dart';
import '../widgets/appbar_profile.dart';
import '../widgets/botton_sheet.dart';
import '../widgets/car_category.dart';
import '../widgets/car_category_list.dart';
import '../widgets/car_name.dart';
import '../widgets/car_name_list.dart';
import '../widgets/car_name_listview.dart';
import '../widgets/custom_text_with_circular_progress.dart';
import 'welcome_location_screen.dart';

class WelcomeSelectCarScreen extends StatelessWidget {
  const WelcomeSelectCarScreen({super.key, this.textController});
  final TextEditingController? textController ;


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SelectedCarCubit>(),
      child: Builder(
          builder: (context) {
            return Scaffold(
              resizeToAvoidBottomInset: true,
              backgroundColor: AppColors.scaffoldColor,
              appBar: const AppbarProfile(pageToNavigate: const LoginScreen(),image: AppImageKeys.notification),
              bottomSheet:BottonSheet(
                containerHeight: 90,
                onTap: (){
                Navigator.of(context).pushReplacement(
                  NavigateToPageWidget( WelcomeLocationScreen( )),
                );
              },),
              body:SafeArea(
                  child: Center(
                      child: SingleChildScrollView(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                          Flexible(
                          child: SizedBox(
                          width: 400,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                        const SizedBox(height: 30),
                                        CustomTextWithCircularProgress(textTitle: AppLanguageKeys.yourCarData, textDescription: AppLanguageKeys.toViewYourCarsModelsServicesAndCenters,current: 2, total: 4,),
                                        const SizedBox(height: 32,),
                                        CarName(textController: textController, onChanged: (value) {
                                          context.read<SelectedCarCubit>().changeCar(value);},),
                                        const SizedBox(height: 24,),
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
                                      ])))]),
                                const SizedBox(height: 132,),

                              ])))),
            );
          }
      ),
    );
  }
}

