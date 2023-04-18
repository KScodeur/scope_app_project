import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, primarySwatch: Colors.blue),
      home: const Rootpage(),
    );
  }
}

class Rootpage extends StatefulWidget {
  const Rootpage({super.key});
  @override
  State<Rootpage> createState() => _RootpageState();
}

class _RootpageState extends State<Rootpage> {
  List<Widget> pages = const [HomePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // children: [
        body: Column(
      children: [
        Container(
          height: 120,
          child: Image.asset('images/scope.png'),
        ),
        const Text('SCoPE',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        const Text('Sorting And Collecting Plastics in our Environment',
            style: TextStyle(fontWeight: FontWeight.bold)),
        const Text('Plus un seul déchet plastique dans la nature',
            style: TextStyle(fontWeight: FontWeight.bold)),
        const Text('Bienvenue chez SCoPE',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        const Text('Veuillez vous connecter',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),

        // Le premier input
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 75.0),
            width: 300,
            child: const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
              ))),
            ),
          ),
        ),

        // deuxième input
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 15.0, bottom: 30.0),
            width: 300,
            child: const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
              ))),
            ),
          ),
        ),

        // Le bouton envoyer le code de verification
        SizedBox(
          width: 300,
          child: OutlinedButton(
            // style: ElevatedButton.styleFrom(
            //   textStyle: const TextStyle(color: Colors.blue)
            onPressed: () {},
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0))),
            ),
            child: const Text('Envoyer le code de vérification'),
          ),
        ),

        // La ligne des deux boutons de renvoie et de vérification
        Container(
          margin: const EdgeInsets.only(top: 15.0),
          child: SizedBox(
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Renvoyer le code'),
                ),
                OutlinedButton(onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context){
                        return const HomePage();
                      }
                  ));
                }, child: const Text('Vérifier'))
              ],
            ),
          ),
        ),
        Container(
            padding: const EdgeInsets.all(20),
            child: const Text(
              "En créant votre compte, vous acceptez les conditions générales de SCoPE.Veuillez consulter notre politique de confidentialité",
              softWrap: true,
            ))

        // Container(
        //     width: 100,
        //     padding: const EdgeInsets.all(8),
        //     child: const Center(
        //       // crossAxisAlignment: CrossAxisAlignment.center,
        //       child:
        //         Text(
        //           "En créant votre compte, vous acceptez les conditions générales de SCoPE.Veuillez consulter notre politique de confidentialité",
        //           style: TextStyle(fontWeight: FontWeight.bold),
        //         ),
        //     )
        //     )
      ],
    ));
  }
}
