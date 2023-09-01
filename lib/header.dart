import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  final Color color;
  final bool isSelected;
  const Header({
    Key? key,
    required this.title,
    required this.color,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
       color: isSelected ? color : Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: isSelected ? color : Colors.purple),
      ),
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            title,
            style: TextStyle(
                color: isSelected ? Colors.white : Colors.grey.shade700,
                fontWeight: FontWeight.bold),
          )),
    );
  }
}