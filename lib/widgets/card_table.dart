import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
              text: 'General', color: Colors.blue, icon: Icons.border_all),
          _SingleCard(
              text: 'Transport',
              color: Colors.pinkAccent,
              icon: Icons.car_rental)
        ]),
        TableRow(children: [
          _SingleCard(
              text: 'General', color: Colors.blue, icon: Icons.border_all),
          _SingleCard(
              text: 'Transport',
              color: Colors.pinkAccent,
              icon: Icons.car_rental)
        ]),
        TableRow(children: [
          _SingleCard(
              text: 'General', color: Colors.blue, icon: Icons.border_all),
          _SingleCard(
              text: 'Transport',
              color: Colors.pinkAccent,
              icon: Icons.car_rental)
        ]),
        TableRow(children: [
          _SingleCard(
              text: 'General', color: Colors.blue, icon: Icons.border_all),
          _SingleCard(
              text: 'Transport',
              color: Colors.pinkAccent,
              icon: Icons.car_rental)
        ]),
        TableRow(children: [
          _SingleCard(
              text: 'General', color: Colors.blue, icon: Icons.border_all),
          _SingleCard(
              text: 'Transport',
              color: Colors.pinkAccent,
              icon: Icons.car_rental)
        ])
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5) ,
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  child: Icon(icon, size: 35, color: Colors.white,),
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(text, style: TextStyle(color: color, fontSize: 18))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
