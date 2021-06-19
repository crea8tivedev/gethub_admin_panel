// To parse this JSON data, do
//
//     final updateStoreModal = updateStoreModalFromJson(jsonString);

import 'dart:convert';

UpdateStoreModal updateStoreModalFromJson(String str) => UpdateStoreModal.fromJson(json.decode(str));

String updateStoreModalToJson(UpdateStoreModal data) => json.encode(data.toJson());

class UpdateStoreModal {
  UpdateStoreModal({
    this.typename,
    this.updateStore,
  });

  String typename;
  UpdateStore updateStore;

  factory UpdateStoreModal.fromJson(Map<String, dynamic> json) => UpdateStoreModal(
    typename: json["__typename"] == null ? null : json["__typename"],
    updateStore: json["updateStore"] == null ? null : UpdateStore.fromJson(json["updateStore"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename == null ? null : typename,
    "updateStore": updateStore == null ? null : updateStore.toJson(),
  };
}

class UpdateStore {
  UpdateStore({
    this.typename,
    this.statusCode,
    this.message,
    this.error,
    this.data,
  });

  String typename;
  int statusCode;
  String message;
  dynamic error;
  Data data;

  factory UpdateStore.fromJson(Map<String, dynamic> json) => UpdateStore(
    typename: json["__typename"] == null ? null : json["__typename"],
    statusCode: json["statusCode"] == null ? null : json["statusCode"],
    message: json["message"] == null ? null : json["message"],
    error: json["error"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename == null ? null : typename,
    "statusCode": statusCode == null ? null : statusCode,
    "message": message == null ? null : message,
    "error": error,
    "data": data == null ? null : data.toJson(),
  };
}

class Data {
  Data({
    this.typename,
    this.id,
    this.name,
    this.address,
    this.addressLine2,
    this.city,
    this.state,
    this.postCode,
    this.countryId,
    this.phone,
    this.operatingHours,
    this.email,
    this.companyName,
    this.websiteUrl,
    this.gstIdNo,
    this.sstIdNo,
    this.businessRegistrationNo,
    this.extraInfo,
  });

  String typename;
  String id;
  String name;
  String address;
  String addressLine2;
  String city;
  String state;
  String postCode;
  String countryId;
  String phone;
  String operatingHours;
  String email;
  String companyName;
  String websiteUrl;
  String gstIdNo;
  String sstIdNo;
  String businessRegistrationNo;
  String extraInfo;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    typename: json["__typename"] == null ? null : json["__typename"],
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    address: json["address"] == null ? null : json["address"],
    addressLine2: json["addressLine2"] == null ? null : json["addressLine2"],
    city: json["city"] == null ? null : json["city"],
    state: json["state"] == null ? null : json["state"],
    postCode: json["postCode"] == null ? null : json["postCode"],
    countryId: json["countryId"] == null ? null : json["countryId"],
    phone: json["phone"] == null ? null : json["phone"],
    operatingHours: json["operatingHours"] == null ? null : json["operatingHours"],
    email: json["email"] == null ? null : json["email"],
    companyName: json["companyName"] == null ? null : json["companyName"],
    websiteUrl: json["websiteUrl"] == null ? null : json["websiteUrl"],
    gstIdNo: json["gstIdNo"] == null ? null : json["gstIdNo"],
    sstIdNo: json["sstIdNo"] == null ? null : json["sstIdNo"],
    businessRegistrationNo: json["businessRegistrationNo"] == null ? null : json["businessRegistrationNo"],
    extraInfo: json["extraInfo"] == null ? null : json["extraInfo"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename == null ? null : typename,
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "address": address == null ? null : address,
    "addressLine2": addressLine2 == null ? null : addressLine2,
    "city": city == null ? null : city,
    "state": state == null ? null : state,
    "postCode": postCode == null ? null : postCode,
    "countryId": countryId == null ? null : countryId,
    "phone": phone == null ? null : phone,
    "operatingHours": operatingHours == null ? null : operatingHours,
    "email": email == null ? null : email,
    "companyName": companyName == null ? null : companyName,
    "websiteUrl": websiteUrl == null ? null : websiteUrl,
    "gstIdNo": gstIdNo == null ? null : gstIdNo,
    "sstIdNo": sstIdNo == null ? null : sstIdNo,
    "businessRegistrationNo": businessRegistrationNo == null ? null : businessRegistrationNo,
    "extraInfo": extraInfo == null ? null : extraInfo,
  };
}
