import 'package:school_management_system/models/user.dart';

class Teacher extends User {
  final String tscNumber;
  final String password;
  final List<String> classes;
  final List<String> subjects;
  final bool isClassTeacher;

  Teacher({
      required super.id,
      required super.firstName,
      required super.lastName,
      required super.role,
      required super.profileImageUrl,
      required super.email,
      required this.tscNumber,
      required this.password,
      required this.classes,
      required this.subjects,
      this.isClassTeacher = false
      });


}