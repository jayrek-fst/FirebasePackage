import 'package:firebase_package/domain/entities/user_entity.dart';

import '../../util/constants/firestore_fields.dart';

class UserModel extends UserEntity {
  const UserModel({required String firstName, required String lastName})
      : super(
          firstName: firstName,
          lastName: lastName,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      firstName: json[FirestoreFields.firstName],
      lastName: json[FirestoreFields.lastName],
    );
  }
}
