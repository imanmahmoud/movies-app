import 'package:flutter/material.dart';
import 'package:movies_app/ui/browse/browse_tab.dart';
import 'package:movies_app/ui/home/home_tab.dart';
import 'package:movies_app/ui/search/search_tab.dart';
import 'package:movies_app/ui/watchlist/watchlist_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> tabs = [HomeTab(), SearchTab(), BrowseTab(), WatchlistTab()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFF1A1A1A),
                  icon: Icon(Icons.home),
                  label: 'Home'),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFF1A1A1A),
                  icon: Icon(Icons.search),
                  label: 'Search'),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFF1A1A1A),
                  icon: Icon(Icons.movie),
                  label: 'Browse'),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFF1A1A1A),
                  icon: Icon(Icons.collections_bookmark),
                  label: 'Watchlist')
            ]),
        body: tabs[selectedIndex],
      ),
    );
  }
}
