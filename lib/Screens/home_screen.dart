import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_task_omkar/Widgets/dashboard_carousel.dart';
import '../data/dashboard_data.dart';
import '../widgets/top_header.dart';
import '../widgets/welcome_section.dart';
import '../widgets/dashboard_card.dart';
import '../widgets/timeline_header.dart';
import '../widgets/date_selector.dart';
import '../widgets/activity_card.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/floating_add_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedDashboard = 0;

  Timer? _dashboardTimer;

  @override
  void initState() {
    super.initState();

    _dashboardTimer = Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        if (!mounted) return;

        setState(() {
          selectedDashboard =
              (selectedDashboard + 1) %
                  DashboardData.items.length;
        });
      },
    );
  }

  @override
  void dispose() {
    _dashboardTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          children: [
            const TopHeader(),

            const WelcomeSection(),

            const Padding(
              padding: EdgeInsets.only(top: 28),
              child: DashboardCarousel(),
            ),

            const TimelineHeader(),

            const DateSelector(),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  16,
                  28,
                  16,
                  0,
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: ActivityCard(),
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: const BottomNavigation(),

      floatingActionButton: const FloatingAddButton(),

      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,
    );
  }
}