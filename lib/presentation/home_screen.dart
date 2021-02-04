import 'package:competey/presentation/common/bottom_navigation/adaptive_bottom_navigation_scaffold.dart';
import 'package:competey/presentation/common/bottom_navigation/bottom_navigation_tab.dart';
import 'package:competey/presentation/route_name_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<BottomNavigationTab> _bottomNavigationTabs = [
    BottomNavigationTab(
      bottomNavigationBarItem: BottomNavigationBarItem(
        label: 'Home',
        icon: Icon(Icons.home),
      ),
      navigatorKey: GlobalKey<NavigatorState>(),
      initialRouteName: RouteNameBuilder.activity(),
    ),
    BottomNavigationTab(
      bottomNavigationBarItem: BottomNavigationBarItem(
        label: 'Log',
        icon: Icon(Icons.add),
      ),
      navigatorKey: GlobalKey<NavigatorState>(),
      initialRouteName: RouteNameBuilder.logActivity(),
    ),
    BottomNavigationTab(
      bottomNavigationBarItem: BottomNavigationBarItem(
        label: 'Groups',
        icon: Icon(Icons.group),
      ),
      navigatorKey: GlobalKey<NavigatorState>(),
      initialRouteName: RouteNameBuilder.groupsList(),
    ),
  ];

  @override
  Widget build(BuildContext context) => AdaptiveBottomNavigationScaffold(
        navigationBarItems: _bottomNavigationTabs,
      );
}
