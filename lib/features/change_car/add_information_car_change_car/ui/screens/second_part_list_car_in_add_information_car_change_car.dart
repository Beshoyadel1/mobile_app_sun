import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:file_picker/file_picker.dart';
import '../../../../../features/change_car/add_information_car_change_car/logic/upload_file_cubit.dart';
import '../../../../../features/change_car/add_information_car_change_car/logic/upload_file_state.dart';
import '../../../../../features/change_car/add_information_car_change_car/ui/screens/design_container_add_in_second_part_list_car_in_add_information_car_change_car.dart';
import '../../../../../features/change_car/add_information_car_change_car/ui/screens/design_container_upload_file_in_second_part_list_car_in_add_information_car_change_car.dart';
import '../../../../../features/change_car/add_information_car_change_car/ui/screens/design_first_text_in_second_part_list_car_in_add_information_car_change_car.dart';
import '../../../../../features/change_car/add_information_car_change_car/ui/screens/design_last_text_in_second_part_list_car_in_add_information_car_change_car.dart';

class SecondPartListCarInAddInformationCarChangeCar extends StatefulWidget {
  const SecondPartListCarInAddInformationCarChangeCar({super.key});

  @override
  State<SecondPartListCarInAddInformationCarChangeCar> createState() =>
      _SecondPartListCarInAddInformationCarChangeCarState();
}

class _SecondPartListCarInAddInformationCarChangeCarState extends State<SecondPartListCarInAddInformationCarChangeCar> {
  late final FileCubit fileCubit;

  @override
  void initState() {
    super.initState();
    fileCubit = FileCubit();
  }

  @override
  void dispose() {
    fileCubit.close();
    super.dispose();
  }

  Future<void> _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null && result.files.isNotEmpty) {
      fileCubit.setFileName(result.files.single.name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FileCubit, FileState>(
      bloc: fileCubit,
      buildWhen: (previous, current) =>
      previous.runtimeType != current.runtimeType,
      builder: (context, state) {
        String text = '';
        if (state is FilePicked) {
          text = state.fileName;
        }

        return Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DesignFirstTextInSecondPartListCarInAddInformationCarChangeCar(),

            DesignContainerAddInSecondPartListCarInAddInformationCarChangeCar(
              onPressed: _pickFile,
            ),

            DesignLastTextInSecondPartListCarInAddInformationCarChangeCar(),

            DesignContainerUploadFileInSecondPartListCarInAddInformationCarChangeCar(
              text: text,
            ),
          ],
        );
      },
    );
  }
}
