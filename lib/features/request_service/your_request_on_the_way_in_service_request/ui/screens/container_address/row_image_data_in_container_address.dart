import 'package:flutter/cupertino.dart';
import '../../../../../../core/theming/assets.dart';
import '../../../../../../features/request_service/custom_widget/container_image_background_pink_widget.dart';
import '../../../../../../features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_address/column_in_row_image_data_in_container_address.dart';

class RowImageDataInContainerAddress extends StatelessWidget {
  const RowImageDataInContainerAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Row(
        spacing: 10,
        children: [
          ContainerImageBackgroundPinkWidget(imagPath: AppImageKeys.map1,),
          ColumnInRowImageDataInContainerAddress(),
        ],
      ),
    );
  }
}
