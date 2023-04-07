import 'package:flutter/material.dart';

class EmptyContactPage extends StatelessWidget {
  const EmptyContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Oops... it\'s empty, try to add some contact first',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
