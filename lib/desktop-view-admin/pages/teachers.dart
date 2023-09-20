/// Display total number of teacher
/// Display teacher details and subjects taught by them
/// Display class teachers
/// Display subject teachers
/// Display teachers by their subjects
/// Display timetable of the teachers

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:school_management_system/desktop-view-admin/widgets/header.dart';
import 'package:school_management_system/providers/data_provider.dart';

class TeachersPage extends ConsumerWidget {
  TeachersPage({super.key});
  final DataTableSource _data = TeacherData();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Header(title: 'Teachers'),
            const SizedBox(
              height: 20,
            ),
            PaginatedDataTable(
              rowsPerPage: 10,
              columns: const [
              DataColumn(label: Text('ID')),
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('TSC Number')),
              DataColumn(label: Text('Class')),
              DataColumn(label: Text('Gender')),
              DataColumn(label: Text('Actions'))
            ], source: _data)
          ],
        ),
      ),
    );
  }
}
