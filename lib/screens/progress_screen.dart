import 'package:flutter/material.dart';

import '../widgets/progressScreen/order_card.dart';

class ProgressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (ctx, i) => OrderCard(),
    );
  }
}
