import 'package:flutter/material.dart';

class ProfileVerticalIconValueWidget extends StatelessWidget {
  final IconData iconName;
  final String value;

  const ProfileVerticalIconValueWidget({
    super.key,
    required this.value,
    required this.iconName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconName, size: 20.0, color: Colors.black),
        const SizedBox(height: 4.0),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.black,
            fontSize: 12.0,
          ),
        )
      ],
    );
  }
}

class ProfileHorizontalIconValueWidget extends StatelessWidget {
  final IconData iconName;
  final String value;

  const ProfileHorizontalIconValueWidget({
    super.key,
    required this.iconName,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30.0,
          width: 30.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey.withOpacity(0.1)),
          child: Icon(
            iconName,
            size: 15.0,
          ),
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.black87,
              fontSize: 14.0,
            ),
          ),
        )
      ],
    );
  }
}
