import 'package:flutter/material.dart';

class KesfetSliderPage extends StatefulWidget {
  const KesfetSliderPage({Key? key}) : super(key: key);

  @override
  State<KesfetSliderPage> createState() => _KesfetSliderPageState();
}

class _KesfetSliderPageState extends State<KesfetSliderPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: buildImageSlider(),
    );
  }

  Row buildImageSlider() {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildImage("resimler/kesfet1.jpeg"),
        buildImage("resimler/kesfet2.jpeg"),
        buildImage("resimler/kesfet3.jpeg"),
        buildImage("resimler/kesfet4.jpeg"),
      ],
    );
  }

  Padding buildImage(String imgName) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: GestureDetector(
        onTap: () {
          print("resme tıklandı");
        },
        child: SizedBox(
          width: 370,
          height: 450,
          child: Image.asset(imgName),
        ),
      ),
    );
  }
}
