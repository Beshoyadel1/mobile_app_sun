import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../core/language/language.dart';
import '../core/language/language_cubit/language_cubit.dart';
import '../core/theming/colors.dart';
import 'core/app_cubit/app_cubit.dart';

import 'core/language/language_cubit/language_states.dart';
import 'core/setup_git_it.dart';
import 'features/splash/splash_screen.dart';



final GlobalKey<ScaffoldMessengerState> scaffoldKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  setupGetIt();
  runApp(
    BlocProvider<LanguageCubit>(
      create: (BuildContext context) =>
      getIt<LanguageCubit>()..getLanguageFromSharedPreference(),
      child: const SunApp(),
    ),
  );
}



class SunApp extends StatelessWidget {
  const SunApp({super.key});
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return  BlocProvider(
      create: (BuildContext context) => getIt<AppCubit>(),
      child: BlocBuilder<LanguageCubit, LanguageStates>(
      buildWhen: (previous, current) {
        return current is ChangeAllAppLanguageState;
      },
      builder: (BuildContext context, state) {
        return MaterialApp(
          color: AppColors.scaffoldColor,
          scaffoldMessengerKey: scaffoldKey,
          supportedLocales: supportedLocales,
          locale: LanguageCubit.get(context).selectedLanguage,
          localizationsDelegates: const [
            AppLocalizationsDelegate(),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          scrollBehavior: const MaterialScrollBehavior().copyWith(
            dragDevices: {
              PointerDeviceKind.mouse,
              PointerDeviceKind.touch,
              PointerDeviceKind.stylus,
              PointerDeviceKind.unknown
            },
          ),
          title: 'SUN SYSTEM',
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.lightWhiteColor,
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(),
        );
      },
    ),
);
  }
}
