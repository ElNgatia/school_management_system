import 'user.dart';

class Teacher extends User {
  final String tscNumber;
  final String password;

  Teacher({
      required super.id,
      required super.firstName,
      required super.lastName,
      required super.role,
      required super.profileImageUrl,
      required this.tscNumber,
      required super.email,
      required this.password
      });
}
