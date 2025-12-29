import '../../../../core/language/language_constant.dart';
import '../../../../core/theming/assets.dart';
import '../../model/onboarding_model.dart';

final List<OnboardingModel> onboardingList = [
  OnboardingModel(
    title: AppLanguageKeys.yourCarIsSafeWithSan,
    subtitle: AppLanguageKeys.integratedSolutions,
    image: AppImageKeys.onboarding1,
  ),
  OnboardingModel(
    title: AppLanguageKeys.maintenanceAndRepairServices,
    subtitle: AppLanguageKeys.weSendYouProfessional,
    image: AppImageKeys.onboarding2,
  ),
  OnboardingModel(
    title: AppLanguageKeys.emergencyService,
    subtitle: AppLanguageKeys.highwayAssistance,
    image: AppImageKeys.onboarding3,
  ),
  OnboardingModel(
    title: AppLanguageKeys.buyingAndSellingCars,
    subtitle: AppLanguageKeys.listYourCarInASafeAndReliableAuctionWithSan,
    image: AppImageKeys.onboarding4,
  ),
];