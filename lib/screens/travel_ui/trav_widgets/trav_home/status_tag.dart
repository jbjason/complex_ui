import 'package:flutter/material.dart';

class GradientStatusTag extends StatelessWidget {
  const GradientStatusTag({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(12),
        gradient:
            LinearGradient(colors: [Colors.amber, Colors.orange.shade600]),
      ),
      child: const Text(
        'StatusTag: Popular',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      ),
    );
  }
}
