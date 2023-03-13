import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  List<Map<String, String>> data = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App',
      home: Scaffold(
        appBar: AppBar(
            leading: const FlutterLogo(),
            backgroundColor: Colors.blueGrey,
            title: Text('Quiz Flutter'),
            actions: <Widget>[ButtonNamaKelompok(), ButtonPerjanjian()]),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.pink)),
                        padding: EdgeInsets.symmetric(
                            vertical: 7.0, horizontal: 14.0),
                        child: Text(
                          'Following',
                          textAlign: TextAlign.center,
                        )),
                  ),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.pink),
                            color: Colors.pink),
                        padding: EdgeInsets.symmetric(
                            vertical: 7.0, horizontal: 14.0),
                        child: Text(
                          'Download',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        )),
                  ),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.pink)),
                        padding: EdgeInsets.symmetric(
                            vertical: 7.0, horizontal: 14.0),
                        child: Text(
                          'Following',
                          textAlign: TextAlign.center,
                        )),
                  ),
                ]),
                Expanded(
                  child: Container(
                    child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Stack(
                                  children: [
                                    Image.network(
                                      data[index]['foto']!,
                                      width: 100,
                                    ),
                                    Positioned(
                                        bottom: 0,
                                        left: 0,
                                        child: Icon(Icons.volume_down,
                                            color: Colors.white)),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          data[index]['judul']!,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(data[index]['subjudul']!),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(data[index]['ukuran']!),
                                        Text('Delete',
                                            style: TextStyle(
                                                color: Colors.blueAccent)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 2,
            selectedItemColor: Colors.red,
            onTap: (value) {}, //event saat button di tap
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list), label: " Program"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "My Learing"),
            ]),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    data.add({
      'judul': '6 Minute Grammar',
      'subjudul': 'future perfect continuous',
      'ukuran': '6 mb',
      'foto':
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'
    });
    data.add({
      'judul': '7 Minute Grammar',
      'subjudul': 'future perfect continuous',
      'ukuran': '5 mb',
      'foto':
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'
    });
    data.add({
      'judul': '2 Minute Grammar',
      'subjudul': 'future perfect continuous',
      'ukuran': '4 mb',
      'foto':
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'
    });
    data.add({
      'judul': '1 Minute Grammar',
      'subjudul': 'future perfect continuous',
      'ukuran': '4 mb',
      'foto':
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'
    });
    data.add({
      'judul': '0 Minute Grammar',
      'subjudul': 'future perfect continuous',
      'ukuran': '4 mb',
      'foto':
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'
    });

    data.add({
      'judul': '0 Minute Grammar',
      'subjudul': 'future perfect continuous',
      'ukuran': '4 mb',
      'foto':
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'
    });

    data.add({
      'judul': '0 Minute Grammar',
      'subjudul': 'future perfect continuous',
      'ukuran': '4 mb',
      'foto':
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'
    });

    data.add({
      'judul': '0 Minute Grammar',
      'subjudul': 'future perfect continuous',
      'ukuran': '4 mb',
      'foto':
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'
    });
  }
}

class ButtonNamaKelompok extends StatelessWidget {
  const ButtonNamaKelompok({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.account_circle_rounded),
      onPressed: () {
        // icon account di tap
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Nama Kelompok'),
            content: const Text(
              'Ihsan Ghozi Zulfikar (ihsanghozizulfikar@upi.edu) ; Ade Mulyana (adem01@upi.edu)',
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ButtonPerjanjian extends StatelessWidget {
  const ButtonPerjanjian({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.access_alarm_rounded),
      onPressed: () {
        // icon setting ditap
        const snackBar = SnackBar(
          duration: Duration(seconds: 20),
          content: Text(
              'Kami berjanji  tidak akan berbuat curang dan atau membantu kelompok lain berbuat curang'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    );
  }
}
