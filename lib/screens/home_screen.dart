//
import 'package:flutter/material.dart';
import 'dashboard_screen.dart';
import 'analytics_screen.dart';
import 'my_products_screen.dart';
import 'manage_screen.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static List<Widget> _screens = <Widget>[
    DashboardScreen(),
    AnalyticsScreen(),
    MyProductsScreen(),
    ManageScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Commerce Admin Panel'),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_outlined),
            label: 'Analytics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop_outlined),
            label: 'My Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Manage',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue.withOpacity(0.5),
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}
