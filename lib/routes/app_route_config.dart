import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:school_management_system/desktop-view-admin/views/dashboard.dart';
import 'package:school_management_system/desktop-view-admin/views/events.dart';
import 'package:school_management_system/desktop-view-admin/views/finance.dart';
import 'package:school_management_system/desktop-view-admin/views/students.dart';
import 'package:school_management_system/desktop-view-admin/views/teachers.dart';

class MyAppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/admin',
        name: 'dashboard',
        pageBuilder: (context, state) {
          return const MaterialPage(child: DashboardView());
        },
      ),
      GoRoute(
        path: '/admin/events',
        name: 'events',
        pageBuilder: (context, state) {
          return const MaterialPage(child: EventsView());
        },
      ),
      GoRoute(
        path: '/admin/finance',
        name: 'finance',
        pageBuilder: (context, state) {
          return const MaterialPage(child: FinanceView());
        },
      ),
      GoRoute(
        path: '/admin/students',
        name: 'students',
        pageBuilder: (context, state) {
          return const MaterialPage(child: StudentsView());
        },
      ),
      GoRoute(
        path: '/admin/teachers',
        name: 'teachers',
        pageBuilder: (context, state) {
          return const MaterialPage(child: TeachersView());
        },
      ),
    ],
  );
}
