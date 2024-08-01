import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:smart_conseil_app/widgets/dashboard_view.dart';
import 'package:smart_conseil_app/widgets/phone_usage_view.dart';


class ChildDashboard extends StatefulWidget {
  @override
  _ChildDashboardState createState() => _ChildDashboardState();
}

class _ChildDashboardState extends State<ChildDashboard> {
  int _selectedIndex = 0;
  int _toggleIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _getBody() {
    switch (_selectedIndex) {
      case 0:
        return DashboardView();
      case 1:
        return PhoneUsageView();
      case 2:
        return _buildSocialMediaView();
      case 3:
        return _buildAlertsView();
      default:
        return DashboardView();
    }
  }

  Widget _buildSocialMediaView() {
    // Placeholder for social media view
    return Container();
  }

  Widget _buildAlertsView() {
    // Placeholder for alerts view
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.blue,
        items: [
          TabItem(icon: Icons.dashboard, title: 'Dashboard'),
          TabItem(icon: Icons.phone, title: 'Comptes'),
          TabItem(icon: Icons.social_distance, title: 'Social media'),
          TabItem(icon: Icons.notifications, title: 'Alerts'),
        ],
        initialActiveIndex: _selectedIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}
