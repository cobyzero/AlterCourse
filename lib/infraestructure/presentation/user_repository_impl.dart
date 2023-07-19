import 'package:alter_course/domain/entities/user_entity.dart';
import 'package:alter_course/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<UserEntity> getUsers() async {
    return UserEntity('Gaspar');
  }
}
