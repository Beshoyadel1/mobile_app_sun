import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/request_service/first_page_in_service_request/logic/select_service_cubit/service_selection_cubit.dart';
import '../../../../../features/request_service/custom_widget/container_select_the_type_of_service_widget.dart';
import '../../logic/select_service_cubit/service_selection_state.dart';
import '../../../../../features/request_service/first_page_in_service_request/ui/screens/text_in_select_the_type_of_service.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';

class SelectTheTypeOfService extends StatefulWidget {
  const SelectTheTypeOfService({super.key});

  @override
  State<SelectTheTypeOfService> createState() => _SelectTheTypeOfServiceState();
}

class _SelectTheTypeOfServiceState extends State<SelectTheTypeOfService> {
  int? selectedIndex;
  final serviceCubit = ServiceSelectionCubit(); // Singleton instance

  @override
  void initState() {
    super.initState();
    selectedIndex = 0;
    final item = service[selectedIndex!];
    serviceCubit.selectService(selectedIndex!, item['imgPathSelect']!, item['text']!);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServiceSelectionCubit, ServiceSelectionState>(
      bloc: serviceCubit,
      buildWhen: (previous, current) => current is ServiceSelected,
      builder: (context, state) {
        if (state is ServiceSelected) {
          selectedIndex = state.index;
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInSelectTheTypeOfService(text: AppLanguageKeys.selectServiceType),
            Row(
              children: List.generate(service.length, (index) {
                final item = service[index];
                final isSelected = selectedIndex == index;
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      serviceCubit.selectService(index, item['imgPathSelect']!, item['text']!);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: ContainerSelectTheTypeOfServiceWidget(
                        isSelected: isSelected,
                        imgPath: item['imgPath']!,
                        text: item['text']!,
                        imgPathSelect: item['imgPathSelect']!,
                      ),
                    ),
                  ),
                );
              }),
            ),
          ],
        );
      },
    );
  }
}


final service = [
  {
    'imgPath': AppImageKeys.service1,
    'text': AppLanguageKeys.roadService,
    'imgPathSelect': AppImageKeys.service11,
  },
  {
    'imgPath': AppImageKeys.service2,
    'text': AppLanguageKeys.mobileMaintenance,
    'imgPathSelect': AppImageKeys.service22,
  },
  {
    'imgPath': AppImageKeys.service3,
    'text': AppLanguageKeys.maintenanceAndRepair,
    'imgPathSelect': AppImageKeys.service33,
  },
  {
    'imgPath': AppImageKeys.service4,
    'text': AppLanguageKeys.oilChange,
    'imgPathSelect': AppImageKeys.service44,
  },
];