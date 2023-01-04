import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:oysho_training/elements/kesfet_slider_page.dart';
import 'package:oysho_training/model/fitness_onecikan_model.dart';

List<FitnessOnecikanModel> textleriGetir() {
  var textListesi = <FitnessOnecikanModel>[];
  var t1 = FitnessOnecikanModel(
      resimAd: "resimler/eklenenson1.jpeg",
      dk: "19 DK",
      etkinBolge: "TÜM VÜCUT",
      egitmenAd: "RAQUEL FERNANDEZ",
      egitimAd: "Kardio dans",
      seviye: "Orta",
      zorluk: "Orta",
      dil: "İngilizce");
  var t2 = FitnessOnecikanModel(
      resimAd: "resimler/eklenenson2.jpeg",
      dk: "10 DK",
      etkinBolge: "GLUTEAL BÖLGE VE BACAK",
      egitmenAd: "MOLİ OLİVERA",
      egitimAd: "10 dk başlangıç seviyesi bacak antrenmanı",
      seviye: "Başlangıç",
      zorluk: "Hafif",
      dil: "İngilizce");
  var t3 = FitnessOnecikanModel(
      resimAd: "resimler/eklenenson3.jpeg",
      dk: "5 DK",
      etkinBolge: "KARIN BÖLGESİ VE CORE",
      egitmenAd: "MOLİ OLİVERA",
      egitimAd: "5 dk kalça kasları + karın kasları",
      seviye: "Orta",
      zorluk: "Orta",
      dil: "İngizilce");
  var t4 = FitnessOnecikanModel(
      resimAd: "resimler/eklenenson4.jpeg",
      dk: "6 DK",
      etkinBolge: "TÜM VÜCUT",
      egitmenAd: "MOLİ OLİVERA",
      egitimAd: "5 dk plank meydan okuması",
      seviye: "İleri",
      zorluk: "Yoğun",
      dil: "İngizilce");
  var t5 = FitnessOnecikanModel(
      resimAd: "resimler/eklenenson1.jpeg",
      dk: "10 DK",
      etkinBolge: "KARIN BÖLGESİ VE CORE",
      egitmenAd: "MOLİ OLİVERA",
      egitimAd: "10 dk boyun dostu karın kasları antrenmanı",
      seviye: "İleri",
      zorluk: "Yoğun",
      dil: "İngizilce");
  var t6 = FitnessOnecikanModel(
      resimAd: "resimler/eklenenson3.jpeg",
      dk: "10 DK",
      etkinBolge: "KARIN BÖLGESİ VE CORE",
      egitmenAd: "MOLİ OLİVERA",
      egitimAd: "10 dk boyun dostu karın kasları antrenmanı",
      seviye: "İleri",
      zorluk: "Yoğun",
      dil: "İngizilce");

  textListesi.add(t1);
  textListesi.add(t2);
  textListesi.add(t3);
  textListesi.add(t4);
  textListesi.add(t5);
  textListesi.add(t6);
  return textListesi;
}

final List<FitnessOnecikanModel> liste = textleriGetir();

final List<Widget> imageSliders = liste
    .map((item) => Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Row(
            children: [
              Container(
                //color: Colors.black,
                width: 315,
                height: 130,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 10.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Image.asset(item.resimAd, fit: BoxFit.contain),
                            Positioned(
                              bottom: 0.0,
                              left: 0.0,
                              right: 0.0,
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: Color(0xD7000000)),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5.0, horizontal: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      // width: 280,
                                      child: Text(
                                        "${item.dk}",
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "RobotoCondensed"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 180,
                      height: 100,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  "${item.etkinBolge}",
                                  overflow: TextOverflow.visible,
                                  style: const TextStyle(
                                      color: Colors.black87,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "RobotoCondensed"),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 180,
                                //height: 30,
                                child: Text(
                                  "${item.egitimAd}",
                                  overflow: TextOverflow.visible,
                                  maxLines: 2,
                                  style: const TextStyle(
                                      color: Colors.black87,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "RobotoCondensed"),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "${item.seviye} · ${item.zorluk} · ${item.dil}",
                                overflow: TextOverflow.visible,
                                style: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "RobotoCondensed"),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ))
    .toList();

class EklenenSonSeanslarPage extends StatefulWidget {
  const EklenenSonSeanslarPage({Key? key}) : super(key: key);

  @override
  State<EklenenSonSeanslarPage> createState() => _EklenenSonSeanslarPageState();
}

class _EklenenSonSeanslarPageState extends State<EklenenSonSeanslarPage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10.0, left: 10.0),
                child: Text(
                  "Eklenen son seanslar",
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
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                items: imageSliders,
                carouselController: _controller,
                options: CarouselOptions(
                    //enlargeCenterPage: true,
                    aspectRatio: 2.7,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
              ),
              Container(
                height: 540,
                color: Colors.black87,
                child: Column(
                  children: [
                    ExpressAntrenman(
                        16.0,
                        "Oysho Training'deki en iyi haberleri keşfedin",
                        Colors.white),
                    KesfetSliderPage(),
                  ],
                ),
              ),
            ],
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
