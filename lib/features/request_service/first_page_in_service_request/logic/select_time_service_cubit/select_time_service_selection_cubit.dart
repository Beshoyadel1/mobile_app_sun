import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/request_service/first_page_in_service_request/logic/select_time_service_cubit/select_time_service_selection_state.dart';

class SelectTimeServiceSelectionCubit extends Cubit<SelectTimeServiceSelectionState> {
  SelectTimeServiceSelectionCubit() : super(SelectTimeServiceInitial());

  void selectServiceSelectTime(int index) => emit(SelectTimeServiceSelected(index));
  void clearSelectionSelectTime() => emit(SelectTimeServiceInitial());
}
