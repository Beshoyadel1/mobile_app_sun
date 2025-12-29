class LogInModel {

  String Phone;
  String Password;

  LogInModel(
      {
        required this.Phone,
        required this.Password,
      });

  Map<String, dynamic> toJson() {
    return {
      "Phone": Phone,
      "Password": Password,
    };
  }
}
