import 'user.dart';

class Parent extends User {
  final String password;

  Parent(
      {required super.id,
      required super.firstName,
      required super.lastName,
      required super.role,
      String? profileImageUrl,
      required super.email,
      required this.password})
      : super(
          profileImageUrl: profileImageUrl ?? 'default_profile_image_url',
        );
}
