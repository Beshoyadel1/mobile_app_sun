import 'package:flutter/material.dart';
import '../../../../core/language/language_constant.dart';
import '../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../core/theming/assets.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../welcome/ui/welcome_select_car_screen.dart';
import '../../login/widgets/register_widget.dart';
import '../widgets/one_text_form_widget.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key,});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}
class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _firstTextEditingController = TextEditingController();
  final TextEditingController _secondTextEditingController = TextEditingController();
  final TextEditingController _thirdTextEditingController = TextEditingController();
  final TextEditingController _fourthTextEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _firstTextEditingController.dispose();
    _secondTextEditingController.dispose();
    _thirdTextEditingController.dispose();
    _fourthTextEditingController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: SafeArea(
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
                    Center(child: Image.asset(AppImageKeys.sarLogo, width: 269, height: 76,),),
                    const SizedBox(height: 64),
                    const TextInAppWidget(text: AppLanguageKeys.confirmPin, textSize: 20, fontWeightIndex: FontSelectionData.mediumFontFamily, textColor: AppColors.darkColor,),
                    const SizedBox(height: 16),
                    const TextInAppWidget(text: AppLanguageKeys.pleaseEnterThePinSentToYourPhoneNumber, textSize: 15, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),
                    const SizedBox(height: 32),

                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: Row(
                        spacing: 20,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OneTextFormWidget(textEditingController: _firstTextEditingController,),
                          OneTextFormWidget(textEditingController: _secondTextEditingController,),
                          OneTextFormWidget(textEditingController: _thirdTextEditingController,),
                          OneTextFormWidget(textEditingController: _fourthTextEditingController,),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(child: const TextInAppWidget(text: '01:35', textSize: 18, fontWeightIndex: FontSelectionData.regularFontFamily, textColor: AppColors.darkColor,),
                    ),
                    const SizedBox(height: 32),
                    TextActionRow(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainText: AppLanguageKeys.iDidNotReceiveAMessage,
                      actionText: AppLanguageKeys.resend,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(NavigateToPageWidget(const WelcomeSelectCarScreen()),);
                      },
                      decorationText: TextDecoration.none,
                      decorationTextColor: Colors.transparent,
                    ),
                    const SizedBox(height: 150),
                  ],
                )))])]))))

    );
  }
}
