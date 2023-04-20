import 'package:flutter/material.dart';
import 'package:scope_app/home_page.dart';

class ActualityPage extends StatefulWidget {
  const ActualityPage({super.key});

  @override
  State<ActualityPage> createState() => _ActualityPageState();
}

class _ActualityPageState extends State<ActualityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Actualités"),
      ),
      body: ListView(children: [
        Container(
          width: getWidth(context),
          // height: getHeight(context)*0.4,
          margin: const EdgeInsets.all(8),
          color: const Color.fromARGB(255, 211, 147, 142),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.values,//
            children: [
            Image.asset('images/actualite_1.png'),
            const Text('Une collecte pas comme les autres',
            style: TextStyle(
              
            ),),
            const Text("Les habitants de Klikamé découvrent l'application SCoPE"),
            const Divider(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text("Koffi Aloua"),
                  Text("26 mai 2020 17:53")
                ],
              ),
              Container(
                margin: const EdgeInsets.all(5),
                height: 40,
                width: 40,
                child:Image.asset("images/scope.png", color: Colors.yellow,))
            ],)
          ],
        )),
      ]),
    );
  }
}