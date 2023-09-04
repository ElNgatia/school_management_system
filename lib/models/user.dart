import 'package:school_management_system/user_roles.dart';

class User {
  final int id; // Unique identifier
  final String firstName;
  final String lastName;
  final UserRole role;
  final String profileImageUrl;
  final String? email;

  User({
      required this.id,
      required this.firstName,
      required this.lastName,
      required this.role,
      required this.profileImageUrl,
      this.email,  
      });
}
