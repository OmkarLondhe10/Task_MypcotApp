import 'package:flutter/material.dart';

class TimelineHeader extends StatelessWidget {
  const TimelineHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 28, 16, 0),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'January, 23 2021',
                style: TextStyle(
                  color: Color(0xFF8491AD),
                  fontSize: 11,
                ),
              ),
              SizedBox(height: 3),
              Text(
                'Today',
                style: TextStyle(
                  color: Color(0xFF304570),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),

          const Spacer(),

          _Pill(
            child: Row(
              children: const [
                Text(
                  'TIMELINE',
                  style: TextStyle(
                    color: Color(0xFF304570),
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 12),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 18,
                  color: Color(0xFF64779D),
                ),
              ],
            ),
          ),

          const SizedBox(width: 10),

          _Pill(
            child: Row(
              children: const [
                Icon(
                  Icons.calendar_month_outlined,
                  size: 17,
                  color: Color(0xFF60759B),
                ),
                SizedBox(width: 7),
                Text(
                  'JAN, 2021',
                  style: TextStyle(
                    color: Color(0xFF304570),
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Pill extends StatelessWidget {
  final Widget child;

  const _Pill({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12,
          ),
        ],
      ),
      child: child,
    );
  }
}