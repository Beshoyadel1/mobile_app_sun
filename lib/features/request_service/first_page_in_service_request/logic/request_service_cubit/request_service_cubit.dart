import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/request_service/first_page_in_service_request/logic/request_service_cubit/request_service_state.dart';

class RequestServiceCubit extends Cubit<RequestServiceState> {
  RequestServiceCubit() : super(RequestServiceInitial());

  void submit(String field1, String field2) {
    if (field1.isEmpty || field2.isEmpty) {
      emit(RequestServiceError("Fields cannot be empty"));
      return;
    }
    emit(RequestServiceLoading());

    Future.delayed(const Duration(seconds: 2), () {
      emit(RequestServiceSuccess());
    });
  }

  void resetToInitial() {
    emit(RequestServiceInitial());
  }
}
