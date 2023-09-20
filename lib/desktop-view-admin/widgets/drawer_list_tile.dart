import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.title,
    required this.icon,
    required this.onSelected,
     this.includeInCallback = true,
  });

  final String title;
  final IconData icon;
  final VoidCallback onSelected;
  final bool includeInCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      horizontalTitleGap: 0.0,
      onTap: () {
        if (includeInCallback) {
          onSelected();
        }
      },
    );
  }
}
