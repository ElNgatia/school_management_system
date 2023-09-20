// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:js';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:school_management_system/widgets/student_details.dart';

class StudentData extends DataTableSource {
  final List<Map<String, dynamic>> _data = List.generate(
      200,
      (index) => {
            "id": index,
            "title": "Item $index",
            "Price": Random().nextInt(10000),
            "Class": "Class $index",
            "Gender": "Gender"
          });

  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_data[index]["id"].toString())),
      DataCell(Text(_data[index]["title"])),
      DataCell(Text(_data[index]["Price"].toString())),
      DataCell(Text(_data[index]["Class"].toString())),
      DataCell(Text(_data[index]["Gender"])),
      DataCell(ElevatedButton(
          onPressed: () => onActionsClicked(context, index),
          child: const Text('Details')))
    ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => _data.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}

void onActionsClicked(context, index) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => StudentDetails()));
  // StudentDetails();
  print('Clicked');
}

class TeacherData extends DataTableSource {
  final List<Map<String, dynamic>> _data = List.generate(
      200,
      (index) => {
            "id": index,
            "Name": "Item $index",
            "TSC Number": Random().nextInt(10000),
            "Class": "Class $index",
            "Gender": "Gender $index"
          });
  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_data[index]["id"].toString())),
      DataCell(Text(_data[index]["Name"])),
      DataCell(Text(_data[index]["TSC Number"].toString())),
      DataCell(Text(_data[index]["Class"].toString())),
      DataCell(Text(_data[index]["Gender"].toString())),
      DataCell(ElevatedButton(
          onPressed: () => onActionsClicked(context, index),
          child: const Text('Details')))
    ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => _data.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}
