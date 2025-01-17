import 'package:dartz/dartz.dart';
import 'package:lastfruitapp/core/errors/exceptions.dart';
import 'package:lastfruitapp/core/errors/failures.dart';
import 'package:lastfruitapp/core/services/fire_base_auth_service.dart';
import 'package:lastfruitapp/features/auth/data/models/user_model.dart';
import 'package:lastfruitapp/features/auth/domain/entities/user_entity.dart';
import 'package:lastfruitapp/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FireBaseAuthService fireBaseAuthService;

  AuthRepoImpl({required this.fireBaseAuthService});

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      var user= await fireBaseAuthService.createUserWithEmailAndPassword(
          email: email, password: password);
      return right(UserModel.fromFireBaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(message: e.message));
    }
    catch(e){
      return left(ServerFailure(message: 'try later'));
    }
  }
}
