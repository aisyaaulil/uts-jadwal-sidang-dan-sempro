import 'package:flutter/material.dart';
import 'package:jadwal_sidang_dan_sempro/page/login_page.dart';
import 'package:jadwal_sidang_dan_sempro/helper/sign_in.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key, required this.email}) : super(key: key);
  final String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 18, 68, 121),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.white, Colors.white],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const Text(
                'Lengkapi data diri anda',
                style: TextStyle(
                    height: -3,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 100),
                ],
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 55, right: 55, top: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Buat Jadwal Sidang Disini",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(
                    left: 55, right: 55, top: 10, bottom: 5),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Buat Jadwal Seminar Proposal Disini",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(
                    left: 55, right: 55, top: 10, bottom: 5),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Lihat Jadwal Dosen Yang Tersedia Disini",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              RaisedButton(
                onPressed: () {
                  signOutGoogle();
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }), ModalRoute.withName('/'));
                },
                color: Color.fromARGB(255, 18, 68, 121),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'SIGN OUT',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
