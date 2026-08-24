import 'package:flutter/material.dart';

class DateSelector extends StatelessWidget {
  const DateSelector({super.key});

  @override
  Widget build(BuildContext context) {
    const days = [
      ('MON', '20'),
      ('TUE', '21'),
      ('WED', '22'),
      ('THU', '23'),
      ('FRI', '24'),
      ('SAT', '25'),
      ('SUN', '26'),
    ];

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 25, 16, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int i = 0; i < days.length; i++)
            _Day(
              day: days[i].$1,
              date: days[i].$2,
              selected: i == 3,
            ),
        ],
      ),
    );
  }
}

class _Day extends StatelessWidget {
  final String day;
  final String date;
  final bool selected;

  const _Day({
    required this.day,
    required this.date,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          day,
          style: TextStyle(
            color: selected
                ? const Color(0xFF1A9C9A)
                : const Color(0xFFB8C5E2),
            fontSize: 11,
          ),
        ),

        const SizedBox(height: 5),

        Text(
          date,
          style: const TextStyle(
            color: Color(0xFF304570),
            fontSize: 13,
          ),
        ),

        const SizedBox(height: 5),

        Container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(
            color: selected
                ? const Color(0xFF169B98)
                : Colors.transparent,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}