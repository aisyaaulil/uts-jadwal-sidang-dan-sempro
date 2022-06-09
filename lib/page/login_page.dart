import 'package:flutter/material.dart';
import 'package:jadwal_sidang_dan_sempro/helper/auth.dart';
import 'package:jadwal_sidang_dan_sempro/helper/sign_in.dart';
import 'package:jadwal_sidang_dan_sempro/page/googleacc_page.dart';
import 'package:jadwal_sidang_dan_sempro/page/sign_up_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 100),
            // const FlutterLogo(size: 80),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const Image(
                    image: NetworkImage(
                        'https://psdkukediri.polinema.ac.id/wp-content/uploads/2020/06/LOGO-POLINEMA-transparent-3.png'),
                    height: 200,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 55, right: 55, top: 70),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                controller: emailController,
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                  left: 55, right: 55, top: 10, bottom: 50),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.keyboard),
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                controller: passwordController,
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 140, right: 140, bottom: 10),
              child: ElevatedButton(
                  child: const Text(
                    "MAHASISWA",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      //  fontFamily: 'Montserrat',
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 18, 68, 121),
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () async {
                    await signIn(emailController.text, passwordController.text)
                        .then((result) {
                      if (result == null) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondScreen(
                                      email: emailController.text,
                                    )));
                      } else {
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text(
                            result,
                            style: TextStyle(fontSize: 16),
                          ),
                        ));
                      }
                    });
                  }),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 140, right: 140, bottom: 20),
              child: ElevatedButton(
                  child: const Text(
                    "DOSEN",
                    style: TextStyle(
                      color: Colors.white,
                      //  fontFamily: 'Montserrat',
                      fontSize: 18,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 18, 68, 121),
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  onPressed: () async {
                    signUp(emailController.text, passwordController.text)
                        .then((result) {
                      if (result == null) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondScreen(
                                      email: emailController.text,
                                    )));
                      } else {
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text(
                            result,
                            style: TextStyle(fontSize: 16),
                          ),
                        ));
                      }
                    });
                  }),
            ),
            const SizedBox(height: 20),
            Row(
              children: const <Widget>[
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 30),
                Text(
                  'Or Sign In With',
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(width: 30),
                Expanded(
                  child: Divider(thickness: 1, color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 30),
            _signInButton(),
          ],
        ),
      ]),
    );
  }

  Widget _signInButton() {
    return OutlineButton(
      splashColor: Color.fromARGB(255, 18, 68, 121),
      onPressed: () {
        signInWithGoogle().then((result) {
          if (result != null) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return FirstScreen();
                },
              ),
            );
          }
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: const BorderSide(color: Color.fromARGB(255, 18, 68, 121)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            //Image(image: AssetImage("assets/google_logo.png"), height: 35.0),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Google',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 18, 68, 121),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
