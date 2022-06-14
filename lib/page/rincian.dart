import 'package:flutter/material.dart';

class RincianPage extends StatefulWidget {
  const RincianPage({Key? key}) : super(key: key);

  @override
  _RincianPageState createState() => _RincianPageState();
}

class _RincianPageState extends State<RincianPage> {
  bool _isReadOnly = false;

  bool _isDisabled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          canvasColor: Color.fromRGBO(247, 247, 247, 20)),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Rincian', textAlign: TextAlign.center)),
          backgroundColor: Colors.blue.shade700,
        ),
        body: Form(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                            .copyWith(bottomRight: const Radius.circular(10)),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                height: 60,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/ikon.png'),
                                  ),
                                ),
                              ),
                              const Text(
                                "Aria Putra Pamungkas",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: const ListTile(
                            title: Text(
                              "2031710026",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            subtitle: Text(
                              'D - III Manajemen Informatika',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                            .copyWith(bottomRight: const Radius.circular(10)),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: TextFormField(
                            readOnly: _isReadOnly,
                            controller: TextEditingController(text: '(Judul)'),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                            ),
                            decoration: const InputDecoration(
                              labelText: 'Judul Tugas Akhir / Skripsi',
                              enabledBorder: UnderlineInputBorder(),
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: TextFormField(
                            readOnly: _isReadOnly,
                            controller:
                                TextEditingController(text: '(Nama Dosen)'),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                            ),
                            decoration: const InputDecoration(
                              labelText: 'Dosen Pembimbing',
                              enabledBorder: UnderlineInputBorder(),
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 10.0),
                    child: const Text(
                      "Informasi Sidang",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            height: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/images/ikon.png'),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)
                                    .copyWith(
                                        bottomRight: const Radius.circular(10)),
                                color: Colors.white),
                            padding: EdgeInsets.only(left: 10),
                            child: TextFormField(
                              readOnly: _isReadOnly,
                              enabled: _isDisabled,
                              controller: TextEditingController(
                                  text: 'Dosen Pembimbing 1'),
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 12.0,
                              ),
                              decoration: const InputDecoration(
                                labelText: 'Dosen Pembimbing 1',
                                labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                hintText: 'Judul Tugas Akhir / Skripsi',
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            height: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/images/ikon.png'),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)
                                    .copyWith(
                                        bottomRight: const Radius.circular(10)),
                                color: Colors.white),
                            padding: EdgeInsets.only(left: 10),
                            child: TextFormField(
                              readOnly: _isReadOnly,
                              enabled: _isDisabled,
                              controller: TextEditingController(
                                  text: 'Dosen Pembimbing 2'),
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 12.0,
                              ),
                              decoration: const InputDecoration(
                                labelText: 'Dosen Pembimbing 2',
                                labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                hintText: 'Judul Tugas Akhir / Skripsi',
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                            .copyWith(bottomRight: const Radius.circular(10)),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: TextFormField(
                            readOnly: _isReadOnly,
                            controller: TextEditingController(
                                text: 'Waktu Pelaksanaan'),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                            ),
                            decoration: const InputDecoration(
                              labelText: 'Waktu Pelaksanaan',
                              enabledBorder: UnderlineInputBorder(),
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              hintText: 'Waktu Pelaksanaan',
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: TextFormField(
                            readOnly: _isReadOnly,
                            controller: TextEditingController(
                                text: 'Tempat Pelaksanaan'),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                            ),
                            decoration: const InputDecoration(
                              labelText: 'Tempat Pelaksanaan',
                              enabledBorder: UnderlineInputBorder(),
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              hintText: 'Tempat Pelaksanaan',
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 10.0),
                    child: const Text(
                      "Informasi Sempro",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                            .copyWith(bottomRight: const Radius.circular(10)),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: TextFormField(
                            readOnly: _isReadOnly,
                            controller: TextEditingController(
                                text: 'Waktu Pelaksanaan'),
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0,
                            ),
                            decoration: const InputDecoration(
                              labelText: 'Waktu Pelaksanaan',
                              enabledBorder: UnderlineInputBorder(),
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: TextFormField(
                            readOnly: _isReadOnly,
                            controller: TextEditingController(
                                text: 'Tempat Pelaksanaan'),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                            ),
                            decoration: const InputDecoration(
                              labelText: 'Tempat Pelaksanaan',
                              enabledBorder: UnderlineInputBorder(),
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              hintText: 'Tempat Pelaksanaan',
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20.0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.yellow.shade700),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7.0),
                                    ))),
                            child: const Text('Keluar',
                                style: TextStyle(color: Colors.black)),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 145.0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.blueGrey),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7.0),
                                    ))),
                            child: const Text('Hapus',
                                style: TextStyle(color: Colors.black)),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
