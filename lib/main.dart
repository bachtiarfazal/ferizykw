import 'package:ferizy_apps/ui/pages/loginPage.dart';
import 'package:ferizy_apps/ui/pages/profilPage.dart';
import 'package:ferizy_apps/ui/pages/registerPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'ui/pages/widgets/naviBot.dart';
import 'ui/pages/berandaPage.dart';
// import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        '/beranda-Page': ((context) => berandaPage()),
        '/login-Page': ((context) => LoginPage()),
        '/daftar-Page': ((context) => registerPage()),
        '/berita-Page': ((context) => profilPage()),
      },
    );
  }
}
