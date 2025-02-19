import 'package:equatable/equatable.dart';

class ProfileDataModel extends Equatable {
  final String? id;
  final String? phone;
  final String? email;
  final String? name;
  final String? password;
  final String? updatedAt;
  final String? createdAt;
  final int? avaterId;


  const ProfileDataModel({
     this.id,
     this.phone,
    this.email,
     this.name,
     this.password,
     this.updatedAt,
     this.createdAt,
     this.avaterId,
  });

  factory ProfileDataModel.fromJson(Map<String, dynamic> json) {
    return ProfileDataModel(
      id: json['_id'],
      phone: json['phone'],
      name: json['name'],
      password: json['password'],
      email: json['email'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      avaterId: json['avaterId'],
    );
  }

  @override
  List<Object?> get props => [
        id,
        email,
        password,phone,createdAt,updatedAt,avaterId
      ];
}
