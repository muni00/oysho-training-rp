import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:oysho_training/model/fitness_onecikan_model.dart';

List<FitnessOnecikanModel> textleriGetir() {
  var textListesi = <FitnessOnecikanModel>[];
  var t1 = FitnessOnecikanModel(
      resimAd: "",
      dk: "",
      etkinBolge: "",
      egitmenAd: "",
      egitimAd: "",
      seviye: "",
      zorluk: "",
      dil: "");
  var t2 = FitnessOnecikanModel(
      resimAd: "resimler/fitness.jpeg",
      dk: "19 DK",
      etkinBolge: "TÜM VÜCUT",
      egitmenAd: "RAQUEL FERNANDEZ",
      egitimAd: "Kardio dans",
      seviye: "Orta",
      zorluk: "Orta",
      dil: "İngilizce");
  var t3 = FitnessOnecikanModel(
      resimAd: "resimler/fitness1.jpeg",
      dk: "10 DK",
      etkinBolge: "GLUTEAL BÖLGE VE BACAK",
      egitmenAd: "MOLİ OLİVERA",
      egitimAd: "10 dk başlangıç seviyesi bacak antrenmanı",
      seviye: "Başlangıç",
      zorluk: "Hafif",
      dil: "İngilizce");
  var t4 = FitnessOnecikanModel(
      resimAd: "resimler/fitness2.jpeg",
      dk: "5 DK",
      etkinBolge: "KARIN BÖLGESİ VE CORE",
      egitmenAd: "MOLİ OLİVERA",
      egitimAd: "5 dk kalça kasları + karın kasları",
      seviye: "Orta",
      zorluk: "Orta",
      dil: "İngizilce");
  var t5 = FitnessOnecikanModel(
      resimAd: "resimler/fitness3.jpeg",
      dk: "6 DK",
      etkinBolge: "TÜM VÜCUT",
      egitmenAd: "MOLİ OLİVERA",
      egitimAd: "5 dk plank meydan okuması",
      seviye: "İleri",
      zorluk: "Yoğun",
      dil: "İngizilce");
  var t6 = FitnessOnecikanModel(
      resimAd: "resimler/fitness4.jpeg",
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
          padding: const EdgeInsets.all(8.0),
          child: liste.indexOf(item) == 0
              ? Container(
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Color(0xFFEFEFEF),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(
                                top: 10.0, left: 10.0, bottom: 10.0),
                            child: Icon(
                              Icons.explore_outlined,
                              color: Colors.black54,
                              size: 50,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: SizedBox(
                              width: 250,
                              height: 80,
                              child: Text(
                                "Tercihlerinize ve hedeflerinize göre kişiselleştirilmiş seanslar, programlar ve meydan okumalar elde edin",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black87,
                                    fontFamily: "RobotoCondensed"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Container(
                              width: 110,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.black87,
                                  borderRadius: BorderRadius.circular(18)),
                              child: const Padding(
                                padding: EdgeInsets.all(2.0),
                                child: Text(
                                  "Anket yap",
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "RobotoCondensed"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ))
              : Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset(item.resimAd,
                            fit: BoxFit.cover, width: 1000.0),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration:
                                const BoxDecoration(color: Color(0xDAEFEFEF)),
                            padding: const EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 10.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 280,
                                  child: Text(
                                    "${item.dk} · ${item.etkinBolge} · ${item.egitmenAd}",
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        color: Colors.black87,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: "RobotoCondensed"),
                                  ),
                                ),
                              ],
                            ),
                          ),
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
                                backgroundColor: Colors.white,
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
                          "${item.egitimAd}",
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 16,
                              fontFamily: "RobotoCondensed",
                              color: Colors.black87),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "${item.seviye} · ${item.zorluk}",
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 16,
                              fontFamily: "RobotoCondensed",
                              color: Colors.black26),
                        ),
                        Text(
                          " · ${item.dil}",
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 16,
                              fontFamily: "RobotoCondensed",
                              color: Colors.black54),
                        ),
                      ],
                    )
                  ],
                ),
        ))
    .toList();

class RunningOnecikanPage extends StatefulWidget {
  const RunningOnecikanPage({Key? key}) : super(key: key);

  @override
  State<RunningOnecikanPage> createState() => _RunningOnecikanPageState();
}

class _RunningOnecikanPageState extends State<RunningOnecikanPage> {
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
                  "Running öne çıkanlar",
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
