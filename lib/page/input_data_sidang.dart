import 'dart:html';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  List<String> jadwal = ["Senin", "Selasa", "Rabu", "Kamis", "Jum'at"];
  String _jadwal = "Senin";

  List<String> tempat = ["Online", "Offline"];
  String _tempat = "Online";

  String _d3 = "";

  void _pilihProdi(String value) {
    setState(() {
      _d3 = value;
    });
  }

  void _pilihJadwal(String value) {
    setState(() {
      _jadwal = value;
    });
  }

  void _pilihTempat(String value) {
    setState(() {
      _jadwal = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.list),
        title: new Text("Data Mahasiswa"),
        backgroundColor: Color.fromARGB(255, 18, 68, 121),
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(10.0),
            child: new Column(
              children: <Widget>[
                new TextField(
                  decoration: new InputDecoration(
                      hintText: "Nama Lengkap",
                      labelText: "Nama Lengkap",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                ),
                new TextField(
                  decoration: new InputDecoration(
                      hintText: "NIM",
                      labelText: "NIM",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new RadioListTile(
                  value: "D-III Manajemen Informatika",
                  title: new Text("D-III Manajemen Informatika"),
                  groupValue: _d3,
                  onChanged: (value) {
                    String _d3;
                    (value);
                  },
                ),
                new RadioListTile(
                  value: "D-IV Teknik Informatika",
                  title: new Text("D-IV Teknik Informatika"),
                  groupValue: _d3,
                  onChanged: (value) {
                    String _d3;
                    (value);
                  },
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new TextField(
                  decoration: new InputDecoration(
                      hintText: "Email",
                      labelText: "Email",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new TextField(
                  decoration: new InputDecoration(
                      hintText: "Judul Skripsi/Tugas Akhir",
                      labelText: "Judul Skripsi/Tugas Akhir",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new TextField(
                  decoration: new InputDecoration(
                      hintText: "Dosen Pembimbing",
                      labelText: "Dosen Pembimbing",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new Row(
                  children: <Widget>[
                    new Text(
                      "Jadwal Sidang :    ",
                      style: new TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    new DropdownButton(
                      onChanged: (value) {
                        String _jadwal;
                        (value);
                      },
                      value: _jadwal,
                      items: jadwal.map((String value) {
                        return new DropdownMenuItem(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                    )
                  ],
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new Row(
                  children: <Widget>[
                    new Text(
                      "Tempat Pelaksanaan :    ",
                      style: new TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    new DropdownButton(
                      onChanged: (value) {},
                      value: _tempat,
                      items: tempat.map((String value) {
                        return new DropdownMenuItem(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                    )
                  ],
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          color: Theme.of(context).primaryColorDark,
                          textColor: Theme.of(context).primaryColorLight,
                          onPressed: () {},
                          child: const Text(
                            'Simpan',
                            textScaleFactor: 1.5,
                          ),
                        ),
                      ),
                      Container(
                        width: 5.0,
                      ),
                      Expanded(
                        child: RaisedButton(
                          color: Theme.of(context).primaryColorDark,
                          textColor: Theme.of(context).primaryColorLight,
                          onPressed: () {},
                          child: const Text(
                            'Kembali',
                            textScaleFactor: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
