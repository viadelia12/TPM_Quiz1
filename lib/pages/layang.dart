import 'dart:math';

import 'package:flutter/material.dart';

class LayangLayang extends StatefulWidget {
  const LayangLayang({ Key? key }) : super(key: key);

  @override
  State<LayangLayang> createState() => _LayangLayangState();
}

class _LayangLayangState extends State<LayangLayang> {
  double _luasLayangLayang = 0;
  double _kelilingLayangLayang = 0;
  final diagonal1 = TextEditingController();
  final diagonal2 = TextEditingController();

  void _hitungLuas(diagonal1, diagonal2) {
    setState(() {
      double _diagonal1 = double.parse(diagonal1.text);
      double _diagonal2 = double.parse(diagonal2.text);

      _luasLayangLayang = (_diagonal1*_diagonal2)/2.0;
    });
  }

  void _hitungKeliling(diagonal1, diagonal2) {
    setState(() {
      double _diagonal1 = double.parse(diagonal1.text);
      double _diagonal2 = double.parse(diagonal2.text);
      
      _kelilingLayangLayang = 2*(sqrt((_diagonal1*_diagonal1/4.0)+(_diagonal2*_diagonal2/4.0)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xffeba7ac),
          title: Text("Layang-Layang"),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/geometric.jpg"),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Diagonal 1"),
                keyboardType: TextInputType.number,
                controller: diagonal1,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Diagonal 2"),
                keyboardType: TextInputType.number,
                controller: diagonal2,
              ),
              Row(
                children: <Widget>[
                  ElevatedButton(
                      onPressed: () {
                        _hitungKeliling(diagonal1, diagonal2);
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xffeba7ac))),
                      child: Text("Keliling Layang-Layang")),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    '$_kelilingLayangLayang',
                  )
                ],
              ),
              Row(children: <Widget>[
                ElevatedButton(
                    onPressed: () {
                      _hitungLuas(diagonal1, diagonal2);
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xffeba7ac))),
                    child: Text("Luas Layang-Layang")),
                SizedBox(
                  width: 36.0,
                ),
                Text(
                  '$_luasLayangLayang',
                )
              ]),
            ],
          ),
        )
    );
  }
}