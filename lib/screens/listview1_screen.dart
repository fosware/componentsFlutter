import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final options = ['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1'),
      ),
      body: ListView(
        children: [
          //...options.map((e) => Text('hola mundo')).toList()
          ...options.map(
            (game) => ListTile(
              title: Text(game),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            ),
          )
        ],
      ),
    );
  }
}
