import 'package:flutter/material.dart';
import 'package:flutter_task_omkar/Constants/app_colors.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Row(
        children: [
          _circleButton(
            icon: Icons.menu,
            onTap: () {},
          ),

          const Spacer(),

          _circleButton(
            icon: Icons.location_on_outlined,
            onTap: () {},
          ),

          const SizedBox(width: 12),

          Stack(
            clipBehavior: Clip.none,
            children: [
              _circleButton(
                icon: Icons.notifications_none,
                onTap: () {},
              ),

              Positioned(
                right: -2,
                top: -4,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: const BoxDecoration(
                    color: Color(0xFFE94C32),
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(width: 12),

          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 8,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _circleButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Container(
      width: 38,
      height: 38,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12,
          ),
        ],
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        onPressed: onTap,
        icon: Icon(
          icon,
          size: 20,
          color: AppColors.primaryText
        ),
      ),
    );
  }
}