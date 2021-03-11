import 'package:flutter/material.dart';

import '../bottoSheet/bottom_sheet.dart';

class OrderCard extends StatelessWidget {
  void _onPressed(BuildContext context) {
    showModalBottomSheet(context: context, builder: (ctx) => BottomCard());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _onPressed(context),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 15, top: 15, bottom: 15),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80"),
              ),
              SizedBox(width: 15),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Refinance of Marin Lawren...',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('A short description of order with some short text'),
                    SizedBox(height: 5),
                    Text('order placed At : Jan 11, 2021, 3.45 PM')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
