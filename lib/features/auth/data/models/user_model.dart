import 'package:firebase_auth/firebase_auth.dart';
import 'package:lastfruitapp/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.name, required super.email, required super.uId});

  factory UserModel.fromFireBaseUser(User user) {
    return UserModel(
        email: user.email ?? '', name: user.displayName ?? "", uId: user.uid);
  }
}
