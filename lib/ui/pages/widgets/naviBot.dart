import 'package:ferizy_apps/shared/theme.dart';
import 'package:ferizy_apps/ui/pages/berandaPage.dart';
import 'package:ferizy_apps/ui/pages/loginPage.dart';
import 'package:ferizy_apps/ui/pages/profilPage.dart';
import 'package:ferizy_apps/ui/pages/pembatalanPage.dart';
import 'package:ferizy_apps/ui/pages/pesananPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class botNavi extends StatefulWidget {
  const botNavi({Key? key}) : super(key: key);

  @override
  State<botNavi> createState() => _botNaviState();
}

class _botNaviState extends State<botNavi> {
  int currentIndex = 0;
  final List<Widget> body = [
    berandaPage(),
    pesananPage(),
    pembatalanPage(),
    profilPage(),
    LoginPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            label: "Beranda",
            activeIcon: Icon(
              Icons.home,
              color: kBlueColor,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              color: Colors.blue,
            ),
            label: "PESANAN SAYA",
            activeIcon: Icon(
              Icons.book,
              color: kBlueColor,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.money,
              color: Colors.blue,
            ),
            label: "PEMBATALAN",
            activeIcon: Icon(
              Icons.money,
              color: kBlueColor,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.blue,
            ),
            label: "Profil",
            activeIcon: Icon(
              Icons.person,
              color: kBlueColor,
            ),
          ),
        ],
      ),
    );
  }

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
