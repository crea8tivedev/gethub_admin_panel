// To parse this JSON data, do
//
//     final receiptTemplateModal = receiptTemplateModalFromJson(jsonString);

import 'dart:convert';

ReceiptTemplateModal receiptTemplateModalFromJson(String str) => ReceiptTemplateModal.fromJson(json.decode(str));

String receiptTemplateModalToJson(ReceiptTemplateModal data) => json.encode(data.toJson());

class ReceiptTemplateModal {
  ReceiptTemplateModal({
    this.typename,
    this.getReceiptTemplates,
  });

  String typename;
  GetReceiptTemplates getReceiptTemplates;

  factory ReceiptTemplateModal.fromJson(Map<String, dynamic> json) => ReceiptTemplateModal(
    typename: json["__typename"] == null ? null : json["__typename"],
    getReceiptTemplates: json["getReceiptTemplates"] == null ? null : GetReceiptTemplates.fromJson(json["getReceiptTemplates"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename == null ? null : typename,
    "getReceiptTemplates": getReceiptTemplates == null ? null : getReceiptTemplates.toJson(),
  };
}

class GetReceiptTemplates {
  GetReceiptTemplates({
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

  factory GetReceiptTemplates.fromJson(Map<String, dynamic> json) => GetReceiptTemplates(
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
  });

  String typename;
  String id;
  String name;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    typename: json["__typename"] == null ? null : json["__typename"],
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename == null ? null : typename,
    "id": id == null ? null : id,
    "name": name == null ? null : name,
  };
}
