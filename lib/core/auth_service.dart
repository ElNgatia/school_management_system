import 'package:flutter/material.dart';
import 'package:school_management_system/credentials/supabase.credential.dart';
import 'package:school_management_system/pages/login_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  Future<String?> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final response = await supabase.auth
          .signInWithPassword(email: email, password: password);

      if (response.user != null) {
        final userRole = response.user!.role;
        // userRoleService.setUserRole(userRole);
        print('i am $userRole');
        return userRole;
      }
    } on AuthException catch (_) {
      throw Exception('Wrong email/password. Try again!');
    }
    return null;
  }

  Future<void> signOut(BuildContext context) async {
    try {
      await supabase.auth.signOut();
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => LoginPage(),
      ));
    } catch (e) {
      print(e);
    }
  }
}
