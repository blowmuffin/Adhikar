import 'package:adhikar2/home/homepage.dart';
import 'package:adhikar2/marketplace/marketplace.dart';
import 'package:adhikar2/nyaysahayak/nyaysahayak.dart';
import 'package:adhikar2/profile/profile.dart';
import 'package:adhikar2/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BodyOfAll extends StatefulWidget {
  const BodyOfAll({super.key});

  @override
  State<BodyOfAll> createState() => _HomePageState();
}

class _HomePageState extends State<BodyOfAll> {
  final advancedDrawerController = AdvancedDrawerController();

  //part of bottomnav
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const NyaySahayakPage(),
    const MarketPlacePage()
  ];
  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      controller: advancedDrawerController,
      openRatio: 0.55,
      openScale: 0.8,
      childDecoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
      animationCurve: Curves.easeIn,
      backdropColor: const Color.fromRGBO(0, 0, 128, 1),
      drawer: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 170),
        child: Column(
          children: [
            ListTile(
                leading: const Icon(
                  Icons.person,
                  size: 27,
                  color: Colors.white,
                ),
                title: const Text(
                  'P R O F I L E',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ProfilePage();
                      },
                    ),
                  );
                }),
            ListTile(
                leading: const Icon(
                  Icons.settings,
                  size: 27,
                  color: Colors.white,
                ),
                title: const Text(
                  'S E T T I N G S',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SettingsPage();
                      },
                    ),
                  );
                }),
          ],
        ),
      )),
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Center(
                child: Text(
                  'Adhikar',
                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              drawercontrol();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ),

        //bottom navigation
        bottomNavigationBar: SizedBox(
          width: double.infinity,
          child: GNav(
            backgroundColor: const Color.fromARGB(255, 240, 243, 245),
            gap: 3.6,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.smart_toy,
                text: 'NyaySahayak',
              ),
              GButton(
                icon: Icons.business_center,
                text: 'Marketplace',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
    );
  }

//drawer controller
  void drawercontrol() {
    advancedDrawerController.showDrawer();
  }
}
