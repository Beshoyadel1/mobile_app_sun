import 'package:get_it/get_it.dart';

import '../features/main/logic/basic_services_cubit/basic_services_cubit.dart';
import '../features/main/logic/category_cubit.dart';
import '../features/main/logic/service_center_details_cubit/service_center_details_cubit.dart';
import '../features/main/logic/services_cubit/services_cubit.dart';
import '../features/request_service/first_page_in_service_request/logic/request_service_cubit/request_service_cubit.dart';
import '../features/welcome/logic/select_car_cubit/select_car_cubit.dart';
import 'app_cubit/app_cubit.dart';
import 'language/language_cubit/language_cubit.dart';
import '../features/onboarding/logic/onboarding_cubit.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerLazySingleton<LanguageCubit>(() => LanguageCubit());
  getIt.registerLazySingleton<OnboardingCubit>(() => OnboardingCubit());
  getIt.registerLazySingleton<BasicServicesCubit>(() => BasicServicesCubit());
  getIt.registerLazySingleton<AppCubit>(() => AppCubit());
  getIt.registerLazySingleton<SelectedCarCubit>(() => SelectedCarCubit());
  getIt.registerLazySingleton<ServicesCubit>(() => ServicesCubit());
  getIt.registerLazySingleton<ServiceCenterDetailsCubit>(() => ServiceCenterDetailsCubit());
  getIt.registerLazySingleton<CategoryCubit>(() => CategoryCubit());
  getIt.registerLazySingleton<RequestServiceCubit>(() => RequestServiceCubit());


}