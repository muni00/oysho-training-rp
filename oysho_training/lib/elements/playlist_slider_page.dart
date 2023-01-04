import 'package:flutter/material.dart';

class PlaylistSliderPage extends StatefulWidget {
  const PlaylistSliderPage({Key? key}) : super(key: key);

  @override
  State<PlaylistSliderPage> createState() => _PlaylistSliderPageState();
}

class _PlaylistSliderPageState extends State<PlaylistSliderPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: buildImageSlider(),
      ),
    );
  }

  Row buildImageSlider() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildImage("resimler/playlist1.jpeg"),
        buildImage("resimler/playlist2.jpeg"),
        buildImage("resimler/playlist3.jpeg"),
        buildImage("resimler/playlist4.jpeg"),
        buildImage("resimler/playlist5.jpeg"),
        buildImage("resimler/playlist6.jpeg"),
      ],
    );
  }

  Padding buildImage(String imgName) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: GestureDetector(
        onTap: () {
          print("resme tıklandı");
        },
        child: SizedBox(
          width: 100,
          height: 100,
          child: Image.asset(imgName),
        ),
      ),
    );
  }
}
