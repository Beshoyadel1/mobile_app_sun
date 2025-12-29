import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/request_service/first_page_in_service_request/ui/screens/list_data_in_first_page_in_service_request.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../core/language/language_constant.dart';
import '../../../../core/setup_git_it.dart';
import '../logic/request_service_cubit/request_service_cubit.dart';
import '../logic/request_service_cubit/request_service_state.dart';
class FirstPageInServiceRequest extends StatelessWidget {
  const FirstPageInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {

    final cubit = getIt<RequestServiceCubit>();
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: BlocBuilder<RequestServiceCubit, RequestServiceState>(
        bloc: cubit,
        builder: (context, state) {
          bool showLeading = false;

          if (state is! RequestServiceInitial) {
            showLeading = true;
          }

          return Scaffold(
            backgroundColor: AppColors.scaffoldColor,
            appBar: AppbarProfileWidget(
              title: AppLanguageKeys.requestService,
              showLeading: showLeading,
            ),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: SizedBox(
                    width: 500,
                    child: Column(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            child: ListDataInFirstPageInServiceRequest(
                              cubit: cubit,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
