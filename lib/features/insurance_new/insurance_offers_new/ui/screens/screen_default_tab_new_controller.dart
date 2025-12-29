import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/insurance_new/insurance_offers_new/ui/screens/comprehensive_insurance_new_view.dart';
import '../../../../../features/insurance_new/insurance_offers_new/logic/tab_new_cubit/tab_insurance_new_offers_cubit.dart';
import '../../../../../features/insurance_new/insurance_offers_new/logic/tab_new_cubit/tab_insurance_new_offers_state.dart';
import '../../../../../features/insurance_new/insurance_offers_new/ui/screens/third_party_insurance_new.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/Insurance/custom_widget/tab_insurance_offers.dart';
import '../../../../../core/language/language_constant.dart';

class ScreenDefaultTabNewController extends StatefulWidget {
  const ScreenDefaultTabNewController({super.key});

  @override
  State<ScreenDefaultTabNewController> createState() => _ScreenDefaultTabNewControllerState();
}

class _ScreenDefaultTabNewControllerState extends State<ScreenDefaultTabNewController> {
  late TabInsuranceNewOffersCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<TabInsuranceNewOffersCubit>();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabInsuranceNewOffersCubit, TabInsuranceNewOffersState>(
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
  ComprehensiveInsuranceNewView(),
  ThirdPartyInsuranceNew(),
];
final List<String> eventsNameList = [
  AppLanguageKeys.comprehensiveInsurance,
  AppLanguageKeys.thirdPartyInsurance,
];