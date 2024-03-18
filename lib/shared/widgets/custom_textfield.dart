import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    required this.onchanged,
  });
  final String label;
  final Function(String newText) onchanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            label,
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        Container(
          color: Colors.grey[300],
          padding: EdgeInsets.symmetric(horizontal: 8),
          margin: EdgeInsets.only(top: 8),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: label
            ),
            onChanged: onchanged,
          ),
        )

      ],
    );
  }
}
