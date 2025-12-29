import 'package:flutter/cupertino.dart';
import '../../../../../features/request_service/calling_in_service_request/ui/screens/container_call_in_data_calling_design.dart';
import '../../../../../features/request_service/calling_in_service_request/ui/screens/row_mute_sound_data_calling_design.dart';


class DataCallingDesign extends StatelessWidget {
  const DataCallingDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContainerCallInDataCallingDesign(),
        RowMuteSoundDataCallingDesign()
      ],
    );
  }
}
