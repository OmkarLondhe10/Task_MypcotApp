import '../constants/app_colors.dart';
import '../models/dashboard_item.dart';

class DashboardData {
  static const List<DashboardItem> items = [
    DashboardItem(
      title: 'Orders',
      image: 'assets/icons/orders-illustration-image.svg',
      backgroundColor: AppColors.orders,
      buttonColor: AppColors.orange,
      firstMessage: 'You have 3 active\norders from',
      secondMessage: '02 Pending\nOrders from',
    ),

    DashboardItem(
      title: 'Subscriptions',
      image: 'assets/icons/subscriptions-illustration-image.svg',
      backgroundColor: AppColors.subscriptions,
      buttonColor: AppColors.blue,
      firstMessage: '03 deliveries',
      secondMessage: '10 Active\nSubscriptions',
    ),

    DashboardItem(
      title: 'Customers',
      image: 'assets/icons/customers-illustration-image.svg',
      backgroundColor: AppColors.customers,
      buttonColor: AppColors.pink,
      firstMessage: '15 New customers',
      secondMessage: '1.8% ↑\nCustomers',
    ),
  ];
}