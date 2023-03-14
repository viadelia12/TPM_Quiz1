import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Segitiga extends StatefulWidget {
  const Segitiga({Key? key}) : super(key: key);

  @override
  State<Segitiga> createState() => _SegitigaState();
}

class _SegitigaState extends State<Segitiga> {
  double _luasSegitiga = 0;
  double _kelilingSegitiga = 0;
  final alas = TextEditingController();
  final tinggi = TextEditingController();

  void _hitungLuas(alas, tinggi) {
    setState(() {
      double _alas = double.parse(alas.text);
      double _tinggi = double.parse(tinggi.text);

      _luasSegitiga = (_alas*_tinggi)/2.0;
    });
  }

  void _hitungKeliling(alas, tinggi) {
    setState(() {
      double _alas = double.parse(alas.text);
      double _tinggi = double.parse(tinggi.text);
      double _sisi = sqrt((_tinggi*_tinggi)+(_alas*_alas/4));
      
      _kelilingSegitiga = _alas + _sisi + _sisi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffeba7ac),
          title: Text("Segitiga"),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/triangle.jpg"),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Alas"),
                keyboardType: TextInputType.number,
                controller: alas,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Tinggi"),
                keyboardType: TextInputType.number,
                controller: tinggi,
              ),
              Row(
                children: <Widget>[
                  ElevatedButton(
                      onPressed: () {
                        _hitungKeliling(alas,tinggi);
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xffeba7ac))),
                      child: Text("Keliling Segitiga")),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    '$_kelilingSegitiga',
                  )
                ],
              ),
              Row(children: <Widget>[
                ElevatedButton(
                    onPressed: () {
                      _hitungLuas(alas,tinggi);
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xffeba7ac))),
                    child: Text("Luas Segitiga")),
                SizedBox(
                  width: 36.0,
                ),
                Text(
                  '$_luasSegitiga',
                )
              ]),
            ],
          ),
        )
      );
  }
}
