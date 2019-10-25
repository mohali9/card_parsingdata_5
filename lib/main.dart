import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Card & Parsing Data",
    home: new HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Card & Parsing Data"),
      ),
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // panggil parameter
            new CardSaya(
                icon: Icons.home,
                warna: Colors.orange,
                text: "Rumah",
                warna1: Colors.black),
            new CardSaya(
                icon: Icons.radio,
                warna: Colors.green,
                text: "Musik",
                warna1: Colors.red),
            new CardSaya(
                icon: Icons.local_pizza,
                warna: Colors.blue,
                text: "Pizza",
                warna1: Colors.black),
            new CardSaya(
                icon: Icons.video_call,
                warna: Colors.red,
                text: "Video",
                warna1: Colors.blue),
            new CardSaya(
                icon: Icons.laptop,
                warna: Colors.black,
                text: "Laptop",
                warna1: Colors.green),
          ],
        ),
      ),
    );
  }
}

class CardSaya extends StatelessWidget {
// variable
  CardSaya({this.icon, this.text, this.warna, this.warna1});
// Deklasrasi
  final IconData icon;
  final String text;
  final Color warna;
  final Color warna1;

  @override
  Widget build(BuildContext context) {
    return new Container(
      // padding semua: atas bawah kiri kanan
      padding: new EdgeInsets.all(11.0),
      child: new Card(
          child: new Column(
        children: <Widget>[
          Icon(
            icon,
            size: 50.0,
            color: warna,
          ),
          Text(text, style: TextStyle(fontSize: 40.0, color: warna1)),
        ],
      )),
    );
  }
}
