import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/change_car/add_information_car_change_car/logic/upload_file_state.dart';

class FileCubit extends Cubit<FileState> {
  FileCubit() : super(FileInitial());

  void setFileName(String name) {
    emit(FilePicked(name));
  }

  void reset() {
    emit(FileInitial());
  }
}
