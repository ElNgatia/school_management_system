import 'user.dart';

class Parent extends User {
  final String password;

  Parent(
      {required super.id,
      required super.firstName,
      required super.lastName,
      required super.role,
      required super.profileImageUrl,
      required super.email,
      required this.password
      });
}
