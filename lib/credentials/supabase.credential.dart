import 'package:supabase_flutter/supabase_flutter.dart';

// class SupabaseCredentials {
//   static const String apiKEY =
//       'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imp1c2V6aXllamxqbXVocXNxb21xIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQ2MzgyNDAsImV4cCI6MjAxMDIxNDI0MH0.o6TBdYxpNph0RdBsri9XWOzgWUslIRtcS-mgE4BRRTM';
//   static const String apiURL = 'https://juseziyejljmuhqsqomq.supabase.co';

//   SupabaseClient supabaseClient = SupabaseClient(apiURL, apiKEY);
// }

final supabase = Supabase.instance.client;
