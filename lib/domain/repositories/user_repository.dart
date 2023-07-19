import 'package:alter_course/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity> getUsers();
}
