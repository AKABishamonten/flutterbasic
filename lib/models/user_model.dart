import 'dart:convert';

  List<UserModel> userModelFromJson(String str) => List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

  String userModelToJson(List<UserModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
    UserModel({
        required this.firstname,
        required this.lastname,
        required this.message,
        required this.id,
    });

    final String firstname;
    final String lastname;
    final String message;
    final String id;

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        firstname: json["firstname"],
        lastname: json["lastname"],
        message: json["message"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "firstname": firstname,
        "lastname": lastname,
        "message": message,
        "id": id,
    };
}
