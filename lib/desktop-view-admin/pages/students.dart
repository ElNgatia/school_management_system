/// Add students functionality
/// 1. A widget of number of the students
/// 2. A widget of number of the parents
/// 3. Details of the students after clicking on the widget

import 'package:flutter/material.dart';
import 'package:school_management_system/desktop-view-admin/widgets/header.dart';
import 'package:school_management_system/providers/data_provider.dart';

class StudentsPage extends StatelessWidget {
  StudentsPage({super.key});
  final DataTableSource _data = StudentData();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Header(title: 'Students'),
            const SizedBox(
              height: 20,
            ),
            PaginatedDataTable(
              header: const Center(
                child: Text('Students'),
              ),
              rowsPerPage: 15,
              columnSpacing: 56,
              columns: const [
                DataColumn(label: Text('ID')),
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Gender')),
                DataColumn(label: Text('Class')),
                DataColumn(label: Text('Actions')),
              ],
              source: _data,
            ),
          ],
        ),
      ),
    );
  }
}
