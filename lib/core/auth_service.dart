import 'package:school_management_system/credentials/supabase.credential.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  Future<String?> signIn(
      {required String email, required String password}) async {
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
}