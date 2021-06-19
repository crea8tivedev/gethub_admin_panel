// To parse this JSON data, do
//
//     final createStoreModel = createStoreModelFromJson(jsonString);

import 'dart:convert';

CreateStoreModel createStoreModelFromJson(String str) => CreateStoreModel.fromJson(json.decode(str));

String createStoreModelToJson(CreateStoreModel data) => json.encode(data.toJson());

class CreateStoreModel {
  CreateStoreModel({
    this.typename,
    this.createStore,
  });

  String typename;
  CreateStore createStore;

  factory CreateStoreModel.fromJson(Map<String, dynamic> json) => CreateStoreModel(
    typename: json["__typename"] == null ? null : json["__typename"],
    createStore: json["createStore"] == null ? null : CreateStore.fromJson(json["createStore"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename == null ? null : typename,
    "createStore": createStore == null ? null : createStore.toJson(),
  };
}

class CreateStore {
  CreateStore({
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

  factory CreateStore.fromJson(Map<String, dynamic> json) => CreateStore(
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
