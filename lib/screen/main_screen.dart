import 'package:flutter/material.dart';
import 'package:flutter_task/screen/home_screen.dart';
import 'package:flutter_task/screen/profile_screen.dart';
import 'package:flutter_task/shared_ui/navigation_drawer.dart';

class MainScreen extends StatefulWidget{

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:  Text('الرئسيه',
          style: Theme.of(context).textTheme.headline1.copyWith(color: Color(0xFFFFFFFF)),
        ),
        centerTitle: false,
        bottom: TabBar(
          tabs: [
            Tab(

              child: Text('الرئيسية',
                style: Theme.of(context).textTheme.headline1.copyWith(color: Color(0xFFFFFFFF)),
              ),
            ),
            Tab(
                child:Text ('حسابى',
                  style: Theme.of(context).textTheme.headline1.copyWith(color: Color(0xFFFFFFFF)),
                ),
            ),

          ],
          controller: _tabController,
        ),
      ),
      drawer:
      NavigationDrawer(),

      body: Center(
        child: TabBarView(
          children: [
            HomeScreen(),
            ProfileScreen(),

          ],
          controller: _tabController,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

}