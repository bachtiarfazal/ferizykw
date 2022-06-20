import 'package:ferizy_apps/main.dart';
import 'package:ferizy_apps/ui/pages/loginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../auth.dart';
import '../../shared/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Dummy/dummy_data.dart';

void main() => runApp(MyApp());

class berandaPage extends StatefulWidget {
  const berandaPage({Key? key}) : super(key: key);
  @override
  _berandaPageState createState() => _berandaPageState();
}

class _berandaPageState extends State<berandaPage> {
  String? _valAwal;
  String? _valAkhir;
  String? _valkelasLayanan;
  String? _valJenisPenggunaJasa;
  List _namaPelabuhan = [
    "Bakauheni",
    "Gilimanuk",
    "Ketapang",
    "Merak",
  ];
  List _kelasLayanan = [
    "Regular",
    "Express",
  ];
  List _jenisPengguna = [
    "Pejalan Kaki",
    "Sepeda Motor (<500cc)",
    "Sepeda Motor (>500cc)",
    "Mobil Keluarga",
    "Mobil Pickup",
    "Angkutan Umum Sedang",
    "Angkutan Umum Besar",
    "Truk/Trontom"
  ];
  bool isLight = true;
  late int idUser = 0;
  Widget _namaUser = const Text("");

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(5),
            color: kWhiteColor,
            child: Container(
              child: Utama(),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget Utama() {
    Widget logoFerizy() {
      return Column(
        children: [
          Image.asset(
            'assets/logo.png',
            height: 50,
          ),
        ],
      );
    }

  
    Widget NamaPelabuhan1() {
      return Container(
child: ElevatedButton(onPressed: () {
  
}, child: Text(""),),


      );
    }
     Widget NamaPelabuhan2() {
      return Container(
child: ElevatedButton(onPressed: () {
  
}, child: Text(""),),


      );
    }
     Widget NamaPelabuhan3() {
      return Container(
child: ElevatedButton(onPressed: () {
  
}, child: Text(""),),


      );
    }
     Widget NamaPelabuhan4() {
      return Container(
child: ElevatedButton(onPressed: () {
  
}, child: Text(""),),


      );
    }
    Widget logOutButton() {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        width: double.infinity,
        child: GestureDetector(
          onTap: () {
            AuthenticationService service =
                AuthenticationService(FirebaseAuth.instance);

            service.signOut();

            Navigator.pushNamed(context, '/login-Page');
          },
          child: Text(
            "Logout",
            style: BlackTS.copyWith(fontSize: 16, fontWeight: bold),
          ),
        ),
      );
    }

    return Container(
      child: Column(
        children: [
          logoFerizy(),
          SizedBox(
            height: 20,
          ),
NamaPelabuhan1(),
NamaPelabuhan2(),
NamaPelabuhan3(),
NamaPelabuhan4(),
          SizedBox(
            height: 10,
          ),
          logOutButton()
        ],
      ),
    );
  }
}
