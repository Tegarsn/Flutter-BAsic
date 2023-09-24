import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> data = [
      {
        "name": "Gojo Satoru",
        "grade": "Tingkat Special",
        "foto":
            "https://cdn.oneesports.id/cdn-data/sites/2/2022/12/Gojo-Jujutsu-Kaisen-Season-2.jpg"
      },
      {
        "name": "Geto Suguru",
        "grade": "Tingkat Special",
        "foto":
            "https://aws-images-prod.sindonews.net/dyn/600/pena/sindo-article/original/2023/07/07/JUJUTSU321.jpg"
      },
      {
        "name": "Hakari Kinji",
        "grade": "Tingkat 1",
        "foto": "https://s1.zerochan.net/Hakari.Kinji.600.3698498.jpg"
      },
      {
        "name": "Yuta Okkutsu",
        "grade": "Tingkat Special",
        "foto":
            "https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/2022/03/22/294795932.jpg"
      },
      {
        "name": "Kento Nanami",
        "grade": "Tingkat 1",
        "foto":
            "https://www.looper.com/img/gallery/kento-nanamis-powers-from-jujutsu-kaisen-explained/l-intro-1632713276.jpg"
      },
      {
        "name": "Megumi Fushiguro",
        "grade": "Tingkat 2",
        "foto":
            "https://animeargentina.net/wp-content/uploads/2022/12/megumi-jjk-min.jpg"
      },
      {
        "name": "Yuji Itadori",
        "grade": "Tingkat 2",
        "foto":
            "https://pict.sindonews.net/dyn/850/pena/news/2023/01/08/700/990007/10-fakta-yuji-itadori-wadah-raja-kutukan-di-jujutsu-kaisen-fae.jpg"
      },
      {
        "name": "Inumaki Toge",
        "grade": "Tingkat 2",
        "foto":
            "https://e1.pxfuel.com/desktop-wallpaper/663/13/desktop-wallpaper-toge-inumaki-from-jujutsu-kaisen-aspectsenpai-jujutsu-kaisen-toge-inumaki.jpg"
      },
      {
        "name": "Aoi Todo",
        "grade": "Tingkat 1",
        "foto":
            "https://i.pinimg.com/1200x/fa/e9/a5/fae9a5c5e0366327113508fb698a4654.jpg"
      },
      {
        "name": "Panda",
        "grade": "Tingkat 2",
        "foto":
            "https://cdn.idntimes.com/content-images/duniaku/post/20210418/untitled-1-7292011585af3636381bb996b90a52d6.jpg"
      },
    ];
    return MaterialApp(
      title: 'Tugas Flutter',
      home: Scaffold(
          backgroundColor: Color(0xffffffff),
          appBar: AppBar(
            centerTitle: true,
            title: Text('DAFTAR MURID JUJUTSU'),
            backgroundColor: Color(0xff011fa2),
            leading: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
            ],
          ),
          body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final item = data[index];
              return Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 5,
                ),
                child: ListTile(
                  leading: ClipOval(
                    child: Image.network(
                      item["foto"] ?? "",
                      width: 60,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    style: TextStyle(
                        fontSize: 24, fontFamily: "Serif", height: 1.5),
                    item["name"] ?? "",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.red,
                        fontFamily: "poppins",
                        height: 1.5),
                    item["grade"] ?? "",
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

