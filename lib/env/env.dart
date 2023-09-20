import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'DATABASE_URL', obfuscate: true)
  static final String dbUrl = _Env.dbUrl;
  @EnviedField(varName: 'ANON_KEY', obfuscate: true)
  static final String anonKey = _Env.anonKey;
}
