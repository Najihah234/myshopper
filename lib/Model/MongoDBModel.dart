// To parse this JSON data, do
//
//     final mongoDbModel = mongoDbModelFromJson(jsonString);

import 'dart:convert';

import 'package:mongo_dart/mongo_dart.dart';

MongoDbModel mongoDbModelFromJson(String str) => MongoDbModel.fromJson(json.decode(str));

String mongoDbModelToJson(MongoDbModel data) => json.encode(data.toJson());

class MongoDbModel {
    MongoDbModel({
        required this.id,
        required this.fName,
        required this.lName,
        required this.address,
    });

    ObjectId id;
    String fName;
    String lName;
    String address;

    factory MongoDbModel.fromJson(Map<String, dynamic> json) => MongoDbModel(
        id: json["_id"],
        fName: json["fName"],
        lName: json["lName"],
        address: json["address"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "fName": fName,
        "lName": lName,
        "address": address,
    };
}
