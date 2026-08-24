import 'package:flutter/material.dart';

class DashboardItem {
  final String title;
  final String image;
  final Color backgroundColor;
  final Color buttonColor;

  final String firstMessage;
  final String secondMessage;

  const DashboardItem({
    required this.title,
    required this.image,
    required this.backgroundColor,
    required this.buttonColor,
    required this.firstMessage,
    required this.secondMessage,
  });
}