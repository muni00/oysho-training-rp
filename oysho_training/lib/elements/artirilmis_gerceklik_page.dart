import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:oysho_training/model/artirilmis_gerceklik_model.dart';

List<ArtirilmisGerceklikModel> textleriGetir() {
  var textListesi = <ArtirilmisGerceklikModel>[];
  var t1 = ArtirilmisGerceklikModel(
      resimAd: "resimler/mia1.jpeg",
      oneCikan: true,
      etkinBolge: "HIIT",
      egzersizAd: "Dağ Tırmanışı Yürüyüşü",
      seviye: "İleri",
      zorluk: "Yoğun",
      dil: "İspanyolca");
  var t2 = ArtirilmisGerceklikModel(
      resimAd: "resimler/mia2.jpeg",
      oneCikan: false,
      etkinBolge: "KARIN BÖLGESİ VE CORE",
      egzersizAd: "Yan Plank",
      seviye: "İleri",
      zorluk: "Yoğun",
      dil: "İspanyolca");
  var t3 = ArtirilmisGerceklikModel(
      resimAd: "resimler/mia3.jpeg",
      oneCikan: false,
      etkinBolge: "VİNYASA",
      egzersizAd: "Geniş Açı Duruşu",
      seviye: "Orta",
      zorluk: "Orta",
      dil: "İspanyolca");
  var t4 = ArtirilmisGerceklikModel(
      resimAd: "resimler/mia4.jpeg",
      oneCikan: true,
      etkinBolge: "ALT VÜCUT",
      egzersizAd: "Omuz Köprüsü",
      seviye: "Başlangıç",
      zorluk: "Hafif",
      dil: "İspanyolca");
  var t5 = ArtirilmisGerceklikModel(
      resimAd: "resimler/mia5.jpeg",
      oneCikan: true,
      etkinBolge: "ALT VÜCUT",
      egzersizAd: "Squat",
      seviye: "Başlangıç",
      zorluk: "Hafif",
      dil: "İspanyolca");
  var t6 = ArtirilmisGerceklikModel(
      resimAd: "resimler/mia6.jpeg",
      oneCikan: true,
      etkinBolge: "HATHA",
      egzersizAd: "Aşağı Bakan Köpek",
      seviye: "Başlangıç",
      zorluk: "Hafif",
      dil: "İspanyolca");

  textListesi.add(t1);
  textListesi.add(t2);
  textListesi.add(t3);
  textListesi.add(t4);
  textListesi.add(t5);
  textListesi.add(t6);
  return textListesi;
}

final List<ArtirilmisGerceklikModel> liste = textleriGetir();

final List<Widget> imageSliders = liste
    .map((item) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                children: [
                  Image.asset(item.resimAd, fit: BoxFit.cover, width: 1000.0),
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      decoration: const BoxDecoration(color: Color(0xD7000000)),
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 10.0),
                      child: Row(
                        children: [
                          Text(
                            item.etkinBolge,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: "RobotoCondensed"),
                          ),
                          const Text(
                            " · MİA",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: "RobotoCondensed"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                      top: 15.0,
                      left: 15.0,
                      child: Icon(
                        Icons.view_in_ar_outlined,
                        color: Colors.black54,
                        size: 17,
                      )),
                  Positioned(
                    top: 15.0,
                    left: 40.0,
                    child: item.oneCikan
                        ? Container(
                            // margin: const EdgeInsets.only(left: 10, top: 8.0),
                            width: 40,
                            height: 15,
                            decoration: BoxDecoration(
                                color: Color(0xD7000000),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: .5, right: .5),
                                  child: Text(
                                    "ÖNE ÇIKAN",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 8.0,
                                        color: Colors.white,
                                        fontFamily: "RobotoCondensed"),
                                  ),
                                ),
                              ],
                            ))
                        : Center(),
                  ),
                  const Positioned(
                    top: 15.0,
                    right: 15.0,
                    child: SizedBox(
                      width: 45,
                      height: 45,
                      child: CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 50,
                        child: CircleAvatar(
                          backgroundColor: Colors.white38,
                          radius: 20,
                          child: Icon(Icons.bookmark_border,
                              color: Colors.black87),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Mia ile nasıl yapılır : ${item.egzersizAd}",
                    style: const TextStyle(
                        fontSize: 16,
                        fontFamily: "RobotoCondensed",
                        color: Colors.black54),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "${item.seviye} · ${item.zorluk}",
                    style: const TextStyle(
                        fontSize: 16,
                        fontFamily: "RobotoCondensed",
                        color: Colors.black26),
                  ),
                  Text(
                    " · ${item.dil}",
                    style: const TextStyle(
                        fontSize: 16,
                        fontFamily: "RobotoCondensed",
                        color: Colors.black38),
                  ),
                ],
              )
            ],
          ),
        ))
    .toList();

class ArtirilmisGerceklikPage extends StatefulWidget {
  const ArtirilmisGerceklikPage({Key? key}) : super(key: key);

  @override
  State<ArtirilmisGerceklikPage> createState() =>
      _ArtirilmisGerceklikPageState();
}

class _ArtirilmisGerceklikPageState extends State<ArtirilmisGerceklikPage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10.0, left: 10.0),
                child: Text(
                  "Artırılmış Gerçeklik - Mia ile How to",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16.0,
                      fontFamily: "RobotoCondensed",
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, right: 20.0),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.end,
                  children: liste.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 7.0,
                        height: 7.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                (Theme.of(context).brightness == Brightness.dark
                                        ? Colors.black26
                                        : Colors.black87)
                                    .withOpacity(
                                        _current == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  }).toList(),
                ),
              ), //point i
            ],
          ),
          Column(
            children: [
              CarouselSlider(
                items: imageSliders,
                carouselController: _controller,
                options: CarouselOptions(
                    //enlargeCenterPage: true,
                    aspectRatio: 1.7,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
