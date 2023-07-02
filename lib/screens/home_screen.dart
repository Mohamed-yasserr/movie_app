import 'package:flutter/material.dart';
import 'package:movie_app/tabs/Home_tab.dart';
import 'package:movie_app/tabs/browser_tab.dart';
import 'package:movie_app/tabs/search_tab.dart';
import 'package:movie_app/tabs/watchList_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget>tabs=[BroweserTab(),HomeTab(),SearchTab(),WatchListTab()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon:
            ImageIcon(
             AssetImage('assets/images/Home icon.png')),
            label: 'HOME',
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
                AssetImage('assets/images/search-2.png')),
            label: 'SEARCH',
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(
                'assets/images/Icon material-movie.png'
                )),
            label: 'Browse ',
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
                AssetImage('assets/images/Icon ionic-md-bookmarks.png')),
            label: 'Watchlist',
            backgroundColor: Theme.of(context).primaryColor,
          ),
        ],
      ),
      body: tabs[index],
    );
  }
}
