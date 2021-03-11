import 'package:flutter/material.dart';

import './header.dart';
import './current_status_card.dart';
import './options_list.dart';
import './bottom_buttons.dart';

class BottomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            SizedBox(height: 8),
            CurrentStatusCard(),
            Divider(),
            OptionsList(),
            BottomButtons(),
          ],
        ),
      ),
    );
  }
}
