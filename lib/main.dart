import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:school_management_system/pages/login_page.dart';
// import 'package:school_management_system/desktop-view-admin/utils/sql_helper.dart';
// ignore: depend_on_referenced_packages
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(
      url: 'https://juseziyejljmuhqsqomq.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imp1c2V6aXllamxqbXVocXNxb21xIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQ2MzgyNDAsImV4cCI6MjAxMDIxNDI0MH0.o6TBdYxpNph0RdBsri9XWOzgWUslIRtcS-mgE4BRRTM');

  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
      title: 'School Management System',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

