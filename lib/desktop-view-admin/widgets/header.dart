import 'package:flutter/material.dart';
import 'package:school_management_system/desktop-view-admin/widgets/search_field.dart';

class Header extends StatelessWidget {
  const Header({
    required this.title,
    super.key,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const Spacer(
          flex: 2,
        ),
        const Expanded(child: SearchField()),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
      ],
    );
  }
}
