class OneProviderModel {
  int? id;
  String? name;
  String? latinname;
  String? description;
  String? latindesc;
  int? catid;
  String? address;
  String? addresstext;
  String? phone;
  String? cr;
  String? vatno;

  OneProviderModel(
      {this.id,
        this.name,
        this.latinname,
        this.description,
        this.latindesc,
        this.catid,
        this.address,
        this.addresstext,
        this.phone,
        this.cr,
        this.vatno});

  OneProviderModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    latinname = json['latinname'];
    description = json['description'];
    latindesc = json['latindesc'];
    catid = json['catid'];
    address = json['address'];
    addresstext = json['addresstext'];
    phone = json['phone'];
    cr = json['cr'];
    vatno = json['vatno'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['latinname'] = this.latinname;
    data['description'] = this.description;
    data['latindesc'] = this.latindesc;
    data['catid'] = this.catid;
    data['address'] = this.address;
    data['addresstext'] = this.addresstext;
    data['phone'] = this.phone;
    data['cr'] = this.cr;
    data['vatno'] = this.vatno;
    return data;
  }
}
