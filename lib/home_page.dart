import 'package:flutter/material.dart';
import 'package:scope_app/historic_page.dart';
import 'package:scope_app/actuality_page.dart';
import 'package:scope_app/bankplastic_page.dart';
import 'package:scope_app/services_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pages = const [
    HistoricPage(),
    ServicesPage(),
    ActualityPage(),
    BankplasticPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("!!!"),
      // ),
      body: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topLeft,
                      colors: [Colors.blue.shade900, Colors.blue])),
              // foregroundDecoration: const BoxDecoration(backgroundBlendMode: Colors.blue),
              height: getHeight(context) * 0.36,
              child: Column(children: [
                Container(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(
                          Icons.settings,
                        ),
                      ],
                    )),
                SizedBox(
                    height: 60,
                    child:
                        Center(child: Image.asset("images/profil_user.png"))),
                const Text('Prenom et Nom'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.maps_home_work_outlined),
                    Text("Apedokoè"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [Text("Points"), Text("Levées")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [Text("0"), Text("0")],
                )
              ])),
          Container(
            width: getWidth(context),
            padding: const EdgeInsets.all(20),
            child: OutlinedButton(
              style: ButtonStyle(
                  side: MaterialStateProperty.all<BorderSide>(
                      const BorderSide(width: 1, color: Colors.blue))),
              // style: OutlinedButton.styleFrom(
              //     textStyle: const TextStyle(
              //   fontSize: 18,
              //   fontWeight: FontWeight.normal,
              //   color: Colors.black,
              // )),
              onPressed: () {
                _showAlert(context);
              },
              child: const Text('Demander une levée de kit'),
            ),
          ),
          Container(
              width: getWidth(context),
              padding: const EdgeInsets.only(left: 20, bottom: 20, right: 20),
              child: OutlinedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.all(30))),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const HistoricPage();
                  }));
                },
                child: const Text("voir L'historique"),
                // Icons.access_alarm,
              )),
          Container(
              width: getWidth(context),
              padding: const EdgeInsets.only(left: 20, bottom: 20, right: 20),
              child: OutlinedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.all(30))),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const ActualityPage();
                  }));
                },
                child: const Text("Fil d'actualité"),
              )),
          Container(
              width: getWidth(context),
              padding: const EdgeInsets.only(left: 20, bottom: 20, right: 20),
              child: OutlinedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.all(30))),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const BankplasticPage();
                  }));
                },
                child: const Text("Banques de plastiques"),
              )),
          Container(
              width: getWidth(context),
              padding: const EdgeInsets.only(left: 20, bottom: 20, right: 20),
              child: OutlinedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.all(30))),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const ServicesPage();
                  }));
                },
                child: const Text("Services"),
              )),
          // TextButton(onPressed: onPressed, child: child)
        ],
      ),
    );
  }
}

double getWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

void _showAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Collecte de kit'),
        content: const Text(
            "Un agent de SCoPE sera alerté et viendra collecté votre kit. Voulez-vous confirmé l'alerte?"),
        actions: [
          TextButton(
            child: const Text('Fermer'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
