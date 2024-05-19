import 'package:flutter/material.dart';

class IconTextIcon extends StatelessWidget {
  const IconTextIcon({
    super.key,
    required this.text,
    required this.firstIcon,
    required this.secondIcon,
  });

  final String text;
  final IconData firstIcon;
  final IconData secondIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(firstIcon),
        ),
        const SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(secondIcon),
        )
      ],
    );
  }
}
