import 'package:flutter/material.dart';
import 'package:jadwal_sidang_dan_sempro/page/login_page.dart';
import 'package:jadwal_sidang_dan_sempro/helper/sign_in.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("(2031710026) Aisyah Ulil")),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 18, 68, 121),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 251, 251, 252),
              Color.fromARGB(255, 250, 250, 250)
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(
                  imageUrl!,
                ),
                radius: 60,
                backgroundColor: Colors.transparent,
              ),
              SizedBox(height: 40),
              Text(
                'NAME',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              Text(
                name!,
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 18, 68, 121),
                  //  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 20),
              Text(
                'EMAIL',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              Text(
                email!,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Montserrat",
                  color: Color.fromARGB(255, 18, 68, 121),
                  //fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 50),
              RaisedButton(
                onPressed: () {
                  signOutGoogle();

                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }), ModalRoute.withName('/'));
                },
                color: Color.fromARGB(255, 18, 68, 121),
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Text(
                    'SIGN OUT',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
