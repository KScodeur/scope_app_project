import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("!!!"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            // foregroundDecoration: const BoxDecoration(backgroundBlendMode: Colors.blue),
            height: 235,
            child: Column(
              children: [
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
                const Text('Prenom et Nom'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const[
                    Icon(Icons.maps_home_work_outlined),
                    Text("Apedokoè"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [Text("points"), Text("Levées")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [Text("0"), Text("0")],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
