import 'package:flutter/material.dart';

import '../data/dashboard_data.dart';
import 'dashboard_card.dart';

class DashboardCarousel extends StatefulWidget {
  const DashboardCarousel({super.key});

  @override
  State<DashboardCarousel> createState() => _DashboardCarouselState();
}

class _DashboardCarouselState extends State<DashboardCarousel> {
  final PageController _pageController = PageController(
    viewportFraction: 0.92,
  );

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: PageView.builder(
        controller: _pageController,
        itemCount: DashboardData.items.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final item = DashboardData.items[index];

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: DashboardCard(
              item: item,
            ),
          );
        },
      ),
    );
  }
}