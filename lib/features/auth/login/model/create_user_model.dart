class CreateUserModel {
  String? user;
  String? password;
  int? type;

  CreateUserModel(
      {
        this.user,
        this.password,
        this.type
      });

  CreateUserModel.fromJson(Map<String, dynamic> json) {
    user = json['user'];
    password = json['password'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user'] = this.user;
    data['password'] = this.password;
    data['type'] = this.type;
    return data;
  }
}
