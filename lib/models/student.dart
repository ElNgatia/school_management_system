import 'user.dart';

class Student extends User {
  final String admissionNumber;


  Student({
      required super.id,
      required super.firstName,
      required super.lastName,
      required this.admissionNumber,
      required super.role, 
      required super.profileImageUrl
      });
}
