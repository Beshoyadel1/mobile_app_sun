import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../features/Insurance/insurance_offers/logic/tab_cubit/tab_insurance_offers_cubit.dart';
import '../../../../../features/Insurance/insurance_offers/logic/tab_cubit/tab_insurance_offers_state.dart';
import '../../../../../features/Insurance/insurance_offers/ui/screens/third_party_insurance.dart';
import '../../../../../features/Insurance/insurance_offers/ui/screens/comprehensive_insurance.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/Insurance/custom_widget/tab_insurance_offers.dart';
import '../../../../../core/language/language_constant.dart';

class ScreenDefaultTabController extends StatefulWidget {
  const ScreenDefaultTabController({super.key});

  @override
  State<ScreenDefaultTabController> createState() => _ScreenDefaultTabControllerState();
}

class _ScreenDefaultTabControllerState extends State<ScreenDefaultTabController> {
  late TabInsuranceOffersCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<TabInsuranceOffersCubit>();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabInsuranceOffersCubit, TabInsuranceOffersState>(
      buildWhen: (previous, current) => current is TabInsuranceChangedState,
      builder: (context, state) {
        return DefaultTabController(
          length: eventsNameList.length,
          child: Column(
            children: [
              TabBar(
                onTap: (index) {
                  cubit.changeTab(index);
                },
                tabAlignment: TabAlignment.start,
                labelPadding: EdgeInsets.zero,
                indicatorColor: AppColors.transparent,
                dividerColor: AppColors.transparent,
                isScrollable: true,
                tabs: eventsNameList.map((eventsName) {
                  final index = eventsNameList.indexOf(eventsName);
                  return tabInsuranceOffers(
                    isSelected: cubit.currentIndex == index,
                    evenname: eventsName,
                  );
                }).toList(),
              ),
              Expanded(
                child: TabBarView(
                  children: widgetInsuranceOffers,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
final List<Widget> widgetInsuranceOffers = const [
  ComprehensiveInsurance(),
  ThirdPartyInsurance(),
];
final List<String> eventsNameList = [
  AppLanguageKeys.comprehensiveInsurance,
  AppLanguageKeys.thirdPartyInsurance,
];