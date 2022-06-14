import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:jadwal_sidang_dan_sempro/page/login_page.dart';

//void main() => runApp(MyApp());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //  title: '(Login (2031710026) Aisyah Ulil)',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Jadwal Sempro', textAlign: TextAlign.center),
        backgroundColor: Colors.blue.shade700,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 365,
                height: 130,
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                          AssetImage("assets/images/profile_girl.png"),
                        ),
                        title: Text('Rachma Novita Anggreani',
                            style: TextStyle(height: 1.5, fontSize: 20)),
                        subtitle: Text('23/02/2022',
                            style: TextStyle(height: 1.5, fontSize: 15)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.yellow.shade700),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ))),
                            child: const Text('Rincian',
                                style: TextStyle(color: Colors.black)),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder:
                              (context) => const RincianPage()));
                            },
                          ),
                          const SizedBox(width: 20, height: 3),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 365,
                height: 130,
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                          AssetImage("assets/images/profile_girl.png"),
                        ),
                        title: Text('Aisyah Ulil Maulina',
                            style: TextStyle(height: 1.5, fontSize: 20)),
                        subtitle: Text('24/02/2022',
                            style: TextStyle(height: 1.5, fontSize: 15)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.yellow.shade700),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ))),
                            child: const Text('Rincian',
                                style: TextStyle(color: Colors.black)),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder:
                                  (context) => const RincianPage()));
                            },
                          ),
                          const SizedBox(width: 20, height: 3),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 365,
                height: 130,
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                          AssetImage("assets/images/profile_boy.png"),
                        ),
                        title: Text('Aria Putra Pamungkas',
                            style: TextStyle(height: 1.5, fontSize: 20)),
                        subtitle: Text('25/02/2022',
                            style: TextStyle(height: 1.5, fontSize: 15)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.yellow.shade700),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ))),
                            child: const Text('Rincian',
                                style: TextStyle(color: Colors.black)),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder:
                                  (context) => const RincianPage()));
                            },
                          ),
                          const SizedBox(width: 20, height: 3),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 365,
                height: 130,
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                          AssetImage("assets/images/profile_boy.png"),
                        ),
                        title: Text('Fadhil Jaidi',
                            style: TextStyle(height: 1.5, fontSize: 20)),
                        subtitle: Text('26/02/2022',
                            style: TextStyle(height: 1.5, fontSize: 15)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.yellow.shade700),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ))),
                            child: const Text('Rincian',
                                style: TextStyle(color: Colors.black)),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder:
                                  (context) => const RincianPage()));
                            },
                          ),
                          const SizedBox(width: 20, height: 3),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow.shade700,
        child: const Icon(Icons.add, color: Colors.black),
        onPressed: () {},
      ),
    );
  }
}
