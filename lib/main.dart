import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rabik'in Hesap Makinesi",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rabik'in Hesap Makinesi"),),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  num sayi1 = 0, sayi2 = 0, sonuc = 0;

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  sayiTopla(){
  setState(() {
    sayi1 = num.parse(t1.text);
    sayi2 = num.parse(t1.text);
    sonuc = sayi1 + sayi2;
  });
  }

  sayiCikar(){
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t1.text);
      sonuc = sayi1 - sayi2;
    });
  }

  sayiCarp(){
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t1.text);
      sonuc = sayi1 * sayi2;
    });
  }

  sayiBol(){
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t1.text);
      sonuc = sayi1 / sayi2;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Text("$sonuc"),
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            RaisedButton(onPressed: sayiTopla, child: Text("Topla"),),
            RaisedButton(onPressed: sayiCikar, child: Text("Çıkar"),),
            RaisedButton(onPressed: sayiCarp, child: Text("Çarp"),),
            RaisedButton(onPressed: sayiBol, child: Text("Böl"),),
          ],
        )
      ),
    );
  }
}

