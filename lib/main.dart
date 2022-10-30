// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:qnb_finansbank_w3_d2_play_store/html_link_webview.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Egitimi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: QnbFinansBankFlutterEgitim(),
    );
  }
}

class QnbFinansBankFlutterEgitim extends StatelessWidget {
  QnbFinansBankFlutterEgitim({super.key});

  List sayfalar = [
    '1.sayfa',
    '2.sayfa',
    '3.sayfa',
    '4.sayfa',
  ];

  List isimler = [
    'Ahmet Çolak',
    'Ahmetcan Oral',
    'Erdinç Kapucuoğlu',
    'Mehmet Güveniş',
    'Sema Karakaş Gülen',
    'Alperen Bulut'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: 100,
              height: 500,
              child: ListView.builder(
                itemCount: sayfalar.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                        onTap: () {
                          if (index == 0) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HtmlLinkWebview(
                                        webUrl:
                                            "https://m.media-amazon.com/images/I/81bFTwr9RCL.png",
                                      )),
                            );
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HtmlLinkWebview(
                                        webUrl:
                                            "https://docs.flutter.dev/cookbook/navigation/navigation-basics",
                                      )),
                            );
                          }
                        },
                        child: Text(sayfalar[index])),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Qnb Finansbank Flutter Eğitimi'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 500,
            height: 250,
            child: Center(
              child: ListView.builder(
                itemCount: isimler.length,
                itemBuilder: (context, index) {
                  return Text(
                    isimler[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
