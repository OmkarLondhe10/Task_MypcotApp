import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/dashboard_item.dart';

class DashboardCard extends StatelessWidget {
  final DashboardItem item;

  const DashboardCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
        color: item.backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 20,
            top: 30,
            width: 145,
            height: 145,
            child: SvgPicture.asset(
              item.image,
              fit: BoxFit.contain,
            ),
          ),

          Positioned(
            left: 27,
            bottom: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                color: item.buttonColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                item.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),

          Positioned(
            right: 20,
            top: 5,
            child: _infoCard(
              text: item.firstMessage,
              color: item.buttonColor,
            ),
          ),

          Positioned(
            right: 40,
            top: 95,
            child: Container(
              width: 105,
              height: 70,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Text(
                item.secondMessage,
                style: const TextStyle(
                  color: Color(0xFF304570),
                  fontSize: 12,
                  height: 1.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoCard({
    required String text,
    required Color color,
  }) {
    return Container(
      width: 125,
      height: 68,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          height: 1.4,
        ),
      ),
    );
  }
}