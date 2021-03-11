import 'package:flutter/material.dart';

class CurrentStatusCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        title: Text(
          'Signer(s) Contacted',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text('10 AM, July, 2021'),
      ),
    );
  }
}
