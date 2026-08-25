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

  int currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 220,
          child: PageView.builder(
            controller: _pageController,
            itemCount: DashboardData.items.length,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
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
        ),

        const SizedBox(height: 12),

        // Page indicators
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            DashboardData.items.length,
            (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: currentPage == index ? 20 : 7,
                height: 7,
                decoration: BoxDecoration(
                  color: currentPage == index
                      ? const Color(0xFF304570)
                      : const Color(0xFFD5DCE8),
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}