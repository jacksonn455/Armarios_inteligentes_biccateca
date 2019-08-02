import 'package:armarios_inteligentes/screens/home_screen.dart';
import 'package:armarios_inteligentes/screens/qrcode_screen.dart';
import 'package:armarios_inteligentes/screens/qrscan_screen.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            snap: true,
            backgroundColor: Colors.lightBlueAccent,
            elevation: 0.0,
            actions: <Widget>[
              IconButton(
                disabledColor: Colors.white,
                icon: Icon(Icons.add),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  QrScan()),
                  );
                },
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("Armários Inteligentes"),
              centerTitle: true,
            ),
          ),

        ],
      )
    ]);
  }
}
