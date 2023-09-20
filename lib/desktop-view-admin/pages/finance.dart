/// Track fee payments by each parent.
/// Invoices are generated automatically for each payment.
/// Invoices can be printed or emailed to the client.
/// Track payment status and send reminders to clients.
/// Track expenses and income.
/// Generate reports.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/navigation_provider.dart';


class FinancePage extends ConsumerWidget {
  const FinancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
   return Row(
      children: [
        const VerticalDivider(thickness: 1, width: 1),
        Expanded(
          child: Center(
            child: TextButton(
              onPressed: () {},
              child: const Text('Finance'),
            ),
          ),
        ),
      ],
    );
  }
}
