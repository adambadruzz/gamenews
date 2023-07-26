import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/User.dart';

import '../view/home/home.dart';
import '../view/profile/profile.dart';
import 'drawer.dart';

class TabsController extends StatelessWidget {
  // final UserModel user;
  int user;
  var Tab1, Tab2, Tab3, Tab4;
  TabsController(
      {required this.Tab1,
      required this.Tab2,
      required this.Tab3,
      required this.Tab4,
      required this.user});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 249, 0, 0),
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Game News',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontFamily: 'Poppins Bold',
              fontSize: 20,
            ),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: 'ALL',
              ),
              Tab(
                text: 'TOP 10',
              ),
              Tab(
                text: 'PC',
              ),
              Tab(
                text: 'Mobile',
              ),
            ],
          ),
        ),
        drawer: DrawerWidget(
          user: user,
        ),
        body: TabBarView(
          children: <Widget>[Tab1, Tab2, Tab3, Tab4],
        ),
        // bottomNavigationBar: Controller(),
        // bottomNavigationBar: Butnov(onTabChange: null,),
      ),
    );
  }
}
