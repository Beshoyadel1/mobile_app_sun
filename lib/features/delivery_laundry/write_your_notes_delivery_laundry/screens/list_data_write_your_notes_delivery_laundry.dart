import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/delivery_laundry/write_your_notes_delivery_laundry/screens/text_form_field_in_list_data_write_your_notes_delivery_laundry.dart';
import '../../../../../features/delivery_laundry/write_your_notes_delivery_laundry/screens/first_title_in_list_data_write_your_notes_delivery_laundry.dart';

class ListDataWriteYourNotesDeliveryLaundry extends StatefulWidget {
  const ListDataWriteYourNotesDeliveryLaundry({super.key});

  @override
  State<ListDataWriteYourNotesDeliveryLaundry> createState() => _ListDataWriteYourNotesDeliveryLaundryState();
}

class _ListDataWriteYourNotesDeliveryLaundryState extends State<ListDataWriteYourNotesDeliveryLaundry> {
  late TextEditingController textFormController;
  @override
  void initState() {
    super.initState();
    textFormController = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FirstTitleInListDataWriteYourNotesDeliveryLaundry(),
        TextFormFieldInListDataWriteYourNotesDeliveryLaundry(
          textFormController: textFormController,
        )
      ],
    );
  }
}
