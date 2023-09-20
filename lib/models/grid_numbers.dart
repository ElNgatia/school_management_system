import 'package:flutter/material.dart';

class SchoolSizeInfo {
  final String title;
  final int value;
  final Icon icon;
  SchoolSizeInfo({
    required this.title,
    required this.value,
    required this.icon,
  });
}

List schoolInfo = [
  SchoolSizeInfo(
    title: 'Students',
    value: 100,
    icon: const Icon(Icons.people),
  ),
  SchoolSizeInfo(
    title: 'Teachers',
    value: 10,
    icon: const Icon(Icons.person),
  ),
  SchoolSizeInfo(
    title: 'Subjects',
    value: 10,
    icon: const Icon(Icons.book),
  ),
];
