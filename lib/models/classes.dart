import 'package:school_management_system/models/student.dart';
import 'package:school_management_system/models/teacher.dart';

class Grade {
  final int id;
  final String gradeName;
  final List<Student> students;
  final List<Teacher> subjectTeachers;
  final Teacher classTeacher;

  Grade({
      required this.id,
      required this.gradeName,
      required this.subjectTeachers,
      required this.classTeacher,
      required this.students,
      });
}
