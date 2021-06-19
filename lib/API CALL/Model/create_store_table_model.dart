// To parse this JSON data, do
//
//     final createStoreTableModel = createStoreTableModelFromJson(jsonString);

import 'dart:convert';

CreateStoreTableModel createStoreTableModelFromJson(String str) => CreateStoreTableModel.fromJson(json.decode(str));

String createStoreTableModelToJson(CreateStoreTableModel data) => json.encode(data.toJson());

class CreateStoreTableModel {
  CreateStoreTableModel({
    this.typename,
    this.createStoreTable,
  });

  String typename;
  CreateStoreTable createStoreTable;

  factory CreateStoreTableModel.fromJson(Map<String, dynamic> json) => CreateStoreTableModel(
    typename: json["__typename"] == null ? null : json["__typename"],
    createStoreTable: json["createStoreTable"] == null ? null : CreateStoreTable.fromJson(json["createStoreTable"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename == null ? null : typename,
    "createStoreTable": createStoreTable == null ? null : createStoreTable.toJson(),
  };
}

class CreateStoreTable {
  CreateStoreTable({
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

  factory CreateStoreTable.fromJson(Map<String, dynamic> json) => CreateStoreTable(
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
    this.storeId,
    this.name,
    this.capacity,
  });

  String typename;
  String id;
  String storeId;
  String name;
  int capacity;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    typename: json["__typename"] == null ? null : json["__typename"],
    id: json["id"] == null ? null : json["id"],
    storeId: json["storeId"] == null ? null : json["storeId"],
    name: json["name"] == null ? null : json["name"],
    capacity: json["capacity"] == null ? null : json["capacity"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename == null ? null : typename,
    "id": id == null ? null : id,
    "storeId": storeId == null ? null : storeId,
    "name": name == null ? null : name,
    "capacity": capacity == null ? null : capacity,
  };
}
