import 'dart:ffi';

class ForgetPasswordModel {

  String Phone;
  String NewPassword;
  int Type;

  ForgetPasswordModel(
      {
        required this.Phone,
       required this.NewPassword,
        required this.Type,
      });

  Map<String, dynamic> toJson() {
    return {
      "Phone": Phone,
      "NewPassword": NewPassword,
      "Type": Type,
    };
  }
}