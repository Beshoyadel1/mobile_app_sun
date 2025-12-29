import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../features/request_service/custom_widget/container_part_finish_service_in_list_data_in_first_page_in_service_request.dart';
import '../../../../../features/request_service/first_page_in_service_request/logic/select_time_service_cubit/select_time_service_selection_cubit.dart';
import '../../../../../features/request_service/first_page_in_service_request/logic/select_time_service_cubit/select_time_service_selection_state.dart';
import '../../../../../features/request_service/first_page_in_service_request/ui/screens/text_in_select_the_type_of_service.dart';


class PartFinishServiceInListDataInFirstPageInServiceRequest extends StatefulWidget {
  const PartFinishServiceInListDataInFirstPageInServiceRequest({super.key});

  @override
  State<PartFinishServiceInListDataInFirstPageInServiceRequest> createState() => _PartFinishServiceInListDataInFirstPageInServiceRequestState();
}

class _PartFinishServiceInListDataInFirstPageInServiceRequestState extends State<PartFinishServiceInListDataInFirstPageInServiceRequest> {
  int? selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = 0;
    context.read<SelectTimeServiceSelectionCubit>().selectServiceSelectTime(selectedIndex!);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInSelectTheTypeOfService(
          text: AppLanguageKeys.serviceCompletionTime,
        ),
        const SizedBox(height: 10),
        BlocBuilder<SelectTimeServiceSelectionCubit, SelectTimeServiceSelectionState>(
          buildWhen: (previous, current) => current is SelectTimeServiceSelected,
          builder: (context, state) {
            if (state is SelectTimeServiceSelected) {
              selectedIndex = state.index;
            }
            return SizedBox(
              height: 70,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: service.length,
                separatorBuilder: (context, _) => const SizedBox(width: 8,),
                itemBuilder: (context, index) {
                  final item = service[index];
                  final isSelected = selectedIndex == index;
                  return GestureDetector(
                    onTap: () {
                      context
                          .read<SelectTimeServiceSelectionCubit>()
                          .selectServiceSelectTime(index);
                    },
                    child: ContainerPartFinishServiceInListDataInFirstPageInServiceRequest(
                      isSelected: isSelected,
                      date: item['date']!,
                      day: item['day']!,
                    ),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}


final service = [
  {
    'date': '1 يناير',
    'day': AppLanguageKeys.saturday,
  },
  {
    'date': '1 يناير',
    'day': AppLanguageKeys.sunday,
  },
  {
    'date': '1 يناير',
    'day':AppLanguageKeys.monday,
  },
  {
    'date': '1 يناير',
    'day': AppLanguageKeys.tuesday,
  },
  {
    'date': '1 يناير',
    'day': AppLanguageKeys.wednesday,
  },
  {
    'date': '1 يناير',
    'day': AppLanguageKeys.thursday,
  },
  {
    'date': '1 يناير',
    'day': AppLanguageKeys.friday,
  },
];
