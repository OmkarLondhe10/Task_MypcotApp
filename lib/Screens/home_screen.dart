import 'package:flutter/material.dart';

import 'package:flutter_task_omkar/widgets/dashboard_carousel.dart';
import 'package:flutter_task_omkar/widgets/top_header.dart';
import 'package:flutter_task_omkar/widgets/welcome_section.dart';
import 'package:flutter_task_omkar/widgets/timeline_header.dart';
import 'package:flutter_task_omkar/widgets/date_selector.dart';
import 'package:flutter_task_omkar/widgets/activity_card.dart';
import 'package:flutter_task_omkar/widgets/bottom_navigation.dart';
import 'package:flutter_task_omkar/widgets/floating_add_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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

            const Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
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