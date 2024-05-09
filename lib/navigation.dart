import 'package:company_profile/home_screen.dart';
import 'package:company_profile/portal_berita.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Company Profile',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
            IconButton(onPressed: () {}, icon: Icon(Icons.login)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),
        body: TabBarView(
          children: [
            HomeScreen(),
            PortalBeritaScreen(),
          ],
        ),
        bottomNavigationBar: Container(
          child: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.newspaper),
              )
            ],
          ),
        ),
      ),
    );
  }
}
