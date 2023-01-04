import 'package:flutter/material.dart';
import 'package:oysho_training/model/express_antrenman_model.dart';

class ExpressAnrenmanPage extends StatefulWidget {
  const ExpressAnrenmanPage({Key? key}) : super(key: key);

  @override
  State<ExpressAnrenmanPage> createState() => _ExpressAnrenmanPageState();
}

class _ExpressAnrenmanPageState extends State<ExpressAnrenmanPage> {
  Future<List<ExpressAntrenmanModel>> textleriGetir() async {
    var textListesi = <ExpressAntrenmanModel>[];
    var t1 = ExpressAntrenmanModel(time: "5MIN", title: "Gluteal bölge");
    var t2 =
        ExpressAntrenmanModel(time: "5MIN", title: "Karın kasları ve\ncore");
    var t3 = ExpressAntrenmanModel(time: "10MIN", title: "Fullbody");
    var t4 = ExpressAntrenmanModel(time: "15MIN", title: "Hiit");
    var t5 = ExpressAntrenmanModel(time: "20MIN", title: "Materyalsiz");
    textListesi.add(t1);
    textListesi.add(t2);
    textListesi.add(t3);
    textListesi.add(t4);
    textListesi.add(t5);
    return textListesi;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ExpressAntrenmanModel>>(
      future: textleriGetir(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var textlerListe = snapshot.data;
          return Row(
            //crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SizedBox(
                  width: 400,
                  height: 150,
                  //color: Colors.transparent,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: textlerListe!.length,
                      itemBuilder: (context, index) {
                        var metin = textlerListe[index];
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 100,
                                height: 100,
                                child: CircleAvatar(
                                  backgroundColor: Colors.black12,
                                  radius: 50,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.black54,
                                    radius: 40,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.black54,
                                      radius: 40,
                                      child: Text(
                                        metin.time,
                                        style: const TextStyle(
                                            fontFamily: "RobotoCondensed",
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 100,
                                height: 30,
                                child: Text(
                                  metin.title,
                                  style: const TextStyle(fontSize: 12.0),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ),
            ],
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
