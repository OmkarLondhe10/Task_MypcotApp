import 'package:flutter/material.dart';
import '../models/dashboard_item.dart';

class DashboardData {
  static const List<DashboardItem> items = [
    DashboardItem(
      title: 'Orders',
      image: 'assets/icons/orders-illustration-image.svg',
      backgroundColor: Color(0xFF35A6CE),
      buttonColor: Color(0xFFE66337),
      firstMessage: 'You have 3 active\norders from',
      secondMessage: '02 Pending\nOrders from',
    ),

    DashboardItem(
      title: 'Subscriptions',
      image: 'assets/icons/subscriptions-illustration-image.svg',
      backgroundColor: Color(0xFFE5B91A),
      buttonColor: Color(0xFF2C50D8),
      firstMessage: '03 deliveries',
      secondMessage: '10 Active\nSubscriptions',
    ),

    DashboardItem(
      title: 'Customers',
      image: 'assets/icons/customers-illustration-image.svg',
      backgroundColor: Color(0xFF2EC99A),
      buttonColor: Color(0xFFD72F72),
      firstMessage: '15 New customers',
      secondMessage: '1.8% ↑\nCustomers',
    ),
  ];
}