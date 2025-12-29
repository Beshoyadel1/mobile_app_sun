

class SignUpModel {
  int id;
  String Username;
  String Phone;
  String Email;
  String Password;

  SignUpModel({
    required this.id,
    required this.Username,
    required this.Phone,
    required this.Email,
    required this.Password,
  });

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "Username": Username,
      "Phone": Phone,
      "Email": Email,
      "Password": Password,
    };
  }
}
