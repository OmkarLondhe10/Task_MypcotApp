import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      padding: const EdgeInsets.fromLTRB(30, 18, 20, 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 20,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'New order created',
                  style: TextStyle(
                    color: Color(0xFF5B6F98),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  'New Order created with Order',
                  style: TextStyle(
                    color: Color(0xFF555555),
                    fontSize: 12,
                  ),
                ),

                Spacer(),

                Text(
                  '09:00 AM',
                  style: TextStyle(
                    color: Color(0xFFFF6740),
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                SizedBox(height: 4),

                Text(
                  '→',
                  style: TextStyle(
                    color: Color(0xFFFF6740),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),

          Container(
            width: 58,
            height: 58,
            decoration: const BoxDecoration(
              color: Color(0xFFFF7952),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.assignment_turned_in_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}