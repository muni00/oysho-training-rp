import 'package:flutter/material.dart';
import 'package:oysho_training/elements/artirilmis_gerceklik_page.dart';
import 'package:oysho_training/elements/eklenen_son_seanslar_page.dart';
import 'package:oysho_training/elements/express_anterenman_page.dart';
import 'package:oysho_training/elements/fitnes_onecikan_page.dart';
import 'package:oysho_training/elements/playlist_slider_page.dart';
import 'package:oysho_training/elements/running_onecikanlar_page.dart';
import 'package:oysho_training/elements/yoga_onecikanlar_page.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int secilenIndeks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            buildMainTitle(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: buildMainImageSlider(),
            ),
            ExpressAntrenman(16.0, "Express antrenmanlar", Colors.black87),
            const ExpressAnrenmanPage(),
            Container(
              color: Color(0xFFEFEFEF),
              width: 700,
              height: 300,
              child: ArtirilmisGerceklikPage(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                color: Colors.white,
                width: 700,
                height: 300,
                child: FitnesOnecikanPage(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
              child: Divider(
                thickness: 2,
                color: Color(0xFFEFEFEF),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                color: Colors.white,
                width: 700,
                height: 300,
                child: YogaOnecikanPage(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              child: Divider(
                thickness: 2,
                color: Color(0xFFEFEFEF),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                color: Colors.white,
                width: 700,
                height: 300,
                child: RunningOnecikanPage(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              child: Divider(
                thickness: 2,
                color: Color(0xFFEFEFEF),
              ),
            ),
            Container(
              color: Colors.white,
              width: 700,
              height: 750,
              child: EklenenSonSeanslarPage(),
            ),
            ExpressAntrenman(
                16.0, "Playlist'lerimizle antrenman yapın", Colors.black87),
            PlaylistSliderPage(),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              child: Divider(
                thickness: 2,
                color: Color(0xFFEFEFEF),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Row buildMainImageSlider() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: SizedBox(
            width: 375,
            height: 235,
            child: Image.asset("resimler/img3.jpeg"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: SizedBox(
            width: 375,
            height: 235,
            child: Image.asset("resimler/img1.jpeg"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: SizedBox(
            width: 370,
            height: 235,
            child: Image.asset("resimler/img2.jpeg"),
          ),
        ),
      ],
    );
  }

  Padding buildMainTitle() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 20.0),
      child: Row(
        children: const [
          Text(
            "Merhaba nihal",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 27.0,
                fontFamily: "RobotoCondensed"),
          ),
        ],
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_filled), label: "Başlangıç"),
        BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined), label: "Antrenmanlar"),
        BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard_outlined), label: "Aktivitem"),
      ],
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black45,
      unselectedFontSize: 10.0,
      selectedFontSize: 10.0,
      currentIndex: secilenIndeks,
      onTap: (indeks) {
        setState(() {
          secilenIndeks = indeks;
        });
      },
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      title: Row(
        children: [
          SizedBox(
            width: 50,
            height: 50,
            child: Image.asset("resimler/appBarCurrentIcon.jpeg"),
          ),
          const SizedBox(
            width: 80,
          ),
          SizedBox(
            width: 120,
            height: 60,
            child: Image.asset("resimler/appBarrLogoIcon.jpeg"),
          ),
          const SizedBox(
            width: 70,
          ),
          SizedBox(
            width: 50,
            height: 50,
            child: Image.asset("resimler/appBarrMessageIcon.jpeg"),
          ),
        ],
      ),
    );
  }

  Widget ExpressAntrenman(double size, String gelenText, Color textRenk) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 20.0, bottom: 10.0),
      child: Row(
        children: [
          Text(
            gelenText,
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: size,
                color: textRenk,
                fontWeight: FontWeight.bold,
                fontFamily: "RobotoCondensed"),
          ),
        ],
      ),
    );
  }
}
