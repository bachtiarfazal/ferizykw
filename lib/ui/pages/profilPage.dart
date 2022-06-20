import 'package:ferizy_apps/shared/theme.dart';
import 'package:flutter/material.dart';

class profilPage extends StatelessWidget {
  const profilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Center(
              child: Text(
                "Berita Pariwisata",
                style: TextStyle(color: Colors.black38),
              ),
            ),
          ),
          body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: ListTile(
                  leading: Image.network(
                    "https://cdn.pixabay.com/photo/2018/02/24/23/05/architecture-3179435_960_720.jpg",
                  ),
                  title: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              );
            },
          )),
    );
  }
}
