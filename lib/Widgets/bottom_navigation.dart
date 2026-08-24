import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _BottomItem(
            icon: Icons.home_outlined,
            label: 'Home',
            selected: true,
          ),
          _BottomItem(
            icon: Icons.people_outline,
            label: 'Customers',
          ),
          SizedBox(width: 60),
          _BottomItem(
            icon: Icons.menu_book_outlined,
            label: 'Khata',
          ),
          _BottomItem(
            icon: Icons.receipt_long_outlined,
            label: 'Orders',
          ),
        ],
      ),
    );
  }
}

class _BottomItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;

  const _BottomItem({
    required this.icon,
    required this.label,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 23,
          color: selected
              ? const Color(0xFF50658D)
              : const Color(0xFF687B9F),
        ),

        const SizedBox(height: 3),

        Text(
          label,
          style: TextStyle(
            color: selected
                ? const Color(0xFF304570)
                : const Color(0xFF687B9F),
            fontSize: 11,
          ),
        ),
      ],
    );
  }
}