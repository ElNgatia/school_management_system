import 'package:school_management_system/models/teacher.dart';

class Subjects {
  final int id;
  final String name;
  final String? description;
  final List<Teacher> teachers;

  Subjects(this.id, this.name, this.description, this.teachers);
}
