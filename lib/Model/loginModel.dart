import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    required this.statusCode,
    required this.message,
    required this.data,
  });

  int statusCode;
  String message;
  Data data;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    statusCode: json["statusCode"],
    message: json["message"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "statusCode": statusCode,
    "message": message,
    "data": data.toJson(),
  };
}

class Data {
  Data({
    required this.accessToken,
    required this.vendorDetails,
  });

  String accessToken;
  VendorDetails vendorDetails;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    accessToken: json["accessToken"],
    vendorDetails: VendorDetails.fromJson(json["vendorDetails"]),
  );

  Map<String, dynamic> toJson() => {
    "accessToken": accessToken,
    "vendorDetails": vendorDetails.toJson(),
  };
}

class VendorDetails {
  VendorDetails({
    required this.id,
    required this.countryCode,
    required this.isActive,
    required this.name,
    required this.email,
    required this.phone,
    required this.restaurantId,
    required this.createdAt,
    required this.updatedAt,
    required this.isFirstTimeLogin,
    required this.fcmId,
  });

  String id;
  String countryCode;
  bool isActive;
  String name;
  String email;
  String phone;
  String restaurantId;
  DateTime createdAt;
  DateTime updatedAt;
  bool isFirstTimeLogin;
  String fcmId;

  factory VendorDetails.fromJson(Map<String, dynamic> json) => VendorDetails(
    id: json["_id"],
    countryCode: json["countryCode"],
    isActive: json["isActive"],
    name: json["name"],
    email: json["email"],
    phone: json["phone"],
    restaurantId: json["restaurantId"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    isFirstTimeLogin: json["isFirstTimeLogin"],
    fcmId: json["fcmId"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "countryCode": countryCode,
    "isActive": isActive,
    "name": name,
    "email": email,
    "phone": phone,
    "restaurantId": restaurantId,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "isFirstTimeLogin": isFirstTimeLogin,
    "fcmId": fcmId,
  };
}
