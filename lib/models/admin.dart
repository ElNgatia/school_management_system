import 'user.dart';

class Admin extends User {
  final String password;
  

  Admin({
      required super.id,
      required super.firstName,
      required super.lastName,
      required this.password,
      required super.role,
      required super.profileImageUrl,
      required super.email
      });
}
