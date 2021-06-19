// To parse this JSON data, do
//
//     final getStoreModel = getStoreModelFromJson(jsonString);

import 'dart:convert';

GetStoreModel getStoreModelFromJson(String str) => GetStoreModel.fromJson(json.decode(str));

String getStoreModelToJson(GetStoreModel data) => json.encode(data.toJson());

class GetStoreModel {
  GetStoreModel({
    this.typename,
    this.getStores,
  });

  String typename;
  GetStores getStores;

  factory GetStoreModel.fromJson(Map<String, dynamic> json) => GetStoreModel(
    typename: json["__typename"] == null ? null : json["__typename"],
    getStores: json["getStores"] == null ? null : GetStores.fromJson(json["getStores"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename == null ? null : typename,
    "getStores": getStores == null ? null : getStores.toJson(),
  };
}

class GetStores {
  GetStores({
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
  List<Datum> data;

  factory GetStores.fromJson(Map<String, dynamic> json) => GetStores(
    typename: json["__typename"] == null ? null : json["__typename"],
    statusCode: json["statusCode"] == null ? null : json["statusCode"],
    message: json["message"] == null ? null : json["message"],
    error: json["error"],
    data: json["data"] == null ? null : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename == null ? null : typename,
    "statusCode": statusCode == null ? null : statusCode,
    "message": message == null ? null : message,
    "error": error,
    "data": data == null ? null : List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
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
  dynamic operatingHours;
  String email;
  String companyName;
  String websiteUrl;
  String gstIdNo;
  String sstIdNo;
  String businessRegistrationNo;
  String extraInfo;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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
    operatingHours: json["operatingHours"],
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
    "operatingHours": operatingHours,
    "email": email == null ? null : email,
    "companyName": companyName == null ? null : companyName,
    "websiteUrl": websiteUrl == null ? null : websiteUrl,
    "gstIdNo": gstIdNo == null ? null : gstIdNo,
    "sstIdNo": sstIdNo == null ? null : sstIdNo,
    "businessRegistrationNo": businessRegistrationNo == null ? null : businessRegistrationNo,
    "extraInfo": extraInfo == null ? null : extraInfo,
  };
}

class OperatingHoursClass {
  OperatingHoursClass({
    this.scalar,
  });

  String scalar;

  factory OperatingHoursClass.fromJson(Map<String, dynamic> json) => OperatingHoursClass(
    scalar: json["scalar"] == null ? null : json["scalar"],
  );

  Map<String, dynamic> toJson() => {
    "scalar": scalar == null ? null : scalar,
  };
}
