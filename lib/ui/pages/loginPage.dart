import 'package:ferizy_apps/ui/pages/berandaPage.dart';
import 'package:ferizy_apps/ui/pages/profilPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ferizy_apps/shared/theme.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Dummy/dummy_data.dart';
import '../../auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isRememberMe = false;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  Widget inputEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: WhiteTS.copyWith(fontSize: 16, fontWeight: bold),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: kFontColor, blurRadius: 6, offset: Offset(0, 2)),
            ],
          ),
          height: 60,
          child: TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: kBlueColor,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.email,
                color: kBlueColor,
              ),
              hintText: "Email",
              hintStyle: TextStyle(
                color: kBlueColor,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget inputPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Password",
          style: WhiteTS.copyWith(fontSize: 16, fontWeight: bold),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          // margin: EdgeInsets.all(10),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: kFontColor, blurRadius: 6, offset: Offset(0, 2)),
            ],
          ),
          height: 60,
          child: TextField(
            obscureText: true,
            controller: passwordController,
            style: TextStyle(
              color: kBlueColor,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.key,
                color: kBlueColor,
              ),
              hintText: "Password",
              hintStyle: TextStyle(
                color: kBlueColor,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget lupaPassButton() {
    return Container(
      margin: EdgeInsets.only(left: 38),
      // color: kBgColor,
      alignment: Alignment.topRight,
      child: TextButton(
          onPressed: () => print(
                "Forgot Password Prossed",
              ),
          child: Text(
            "Lupa Password ya??",
            style: WhiteTS.copyWith(
              fontSize: 14,
              fontWeight: bold,
            ),
          )),
    );
  }

  Widget ingatkanSaya() {
    return Container(
      // color: kBgColor,
      // margin: EdgeInsets.only(right: 180),
      child: Row(
        children: [
          Theme(
            data: ThemeData(
              unselectedWidgetColor: kOrangeColor,
            ),
            child: Checkbox(
              value: isRememberMe,
              checkColor: kWhiteColor,
              activeColor: kOrangeColor,
              onChanged: (value) {
                setState(() {
                  isRememberMe = value!;
                });
              },
            ),
          ),
          Text(
            "Ingatkan Saya",
            style: OrangeTS.copyWith(
              fontSize: 14,
              fontWeight: bold,
            ),
          )
        ],
      ),
    );
  }

  Widget loginButton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: GestureDetector(
        onTap: () {
          AuthenticationService service =
              AuthenticationService(FirebaseAuth.instance);

          service.signIn(
              email: emailController.text, password: passwordController.text);

          Navigator.pushNamed(context, '/beranda-Page');
        },
        child: Text(
          "Sign In",
          style: WhiteTS.copyWith(fontSize: 16, fontWeight: bold),
        ),
      ),
    );
  }

  Widget signUpButton() {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/daftar-Page');
      },
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Tidak punya akun?',
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
            TextSpan(
              text: ' Daftar disini',
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 14,
                fontWeight: black,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          color: kBlueColor,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 120,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign In",
                  style: OrangeTS.copyWith(
                    fontSize: 40,
                    fontWeight: black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                inputEmail(),
                SizedBox(
                  height: 10,
                ),
                inputPassword(),
                Row(
                  children: [
                    ingatkanSaya(),
                    lupaPassButton(),
                  ],
                ),
                loginButton(),
                signUpButton()
              ],
            ),
          ),
        )
      ],
    ));
  }
}
