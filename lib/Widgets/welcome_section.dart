import 'package:flutter/material.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 28, 16, 0),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Welcome, ',
                      style: TextStyle(
                        color: Color(0xFF61749E),
                        fontSize: 17,
                      ),
                    ),
                    TextSpan(
                      text: 'Mypcot !!',
                      style: TextStyle(
                        color: Color(0xFF253A67),
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 4),

              Text(
                'here is your dashboard....',
                style: TextStyle(
                  color: Color(0xFF8290AD),
                  fontSize: 12,
                ),
              ),
            ],
          ),

          const Spacer(),

          Container(
            width: 58,
            height: 58,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 18,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: const Icon(
              Icons.search,
              size: 30,
              color: Color(0xFF263B68),
            ),
          ),
        ],
      ),
    );
  }
}