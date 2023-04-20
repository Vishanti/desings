import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SigleCard(
              color: Colors.blue, icon: Icons.add_circle, title: 'General'),
          _SigleCard(
              color: Colors.purpleAccent,
              icon: Icons.directions_bus_rounded,
              title: 'Transport'),
        ]),
        TableRow(children: [
          _SigleCard(
              color: Colors.blue, icon: Icons.add_circle, title: 'General'),
          _SigleCard(
              color: Colors.purpleAccent,
              icon: Icons.directions_bus_rounded,
              title: 'Transport'),
        ]),
        TableRow(children: [
          _SigleCard(
              color: Colors.blue, icon: Icons.add_circle, title: 'General'),
          _SigleCard(
              color: Colors.purpleAccent,
              icon: Icons.directions_bus_rounded,
              title: 'Transport'),
        ]),
        TableRow(children: [
          _SigleCard(
              color: Colors.blue, icon: Icons.add_circle, title: 'General'),
          _SigleCard(
              color: Colors.purpleAccent,
              icon: Icons.directions_bus_rounded,
              title: 'Transport'),
        ]),
        TableRow(children: [
          _SigleCard(
              color: Colors.blue, icon: Icons.add_circle, title: 'General'),
          _SigleCard(
              color: Colors.purpleAccent,
              icon: Icons.directions_bus_rounded,
              title: 'Transport'),
        ])
      ],
    );
  }
}

class _SigleCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;

  const _SigleCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  radius: 30,
                  child: Icon(icon, size: 35),
                ),
                const SizedBox(height: 20),
                Text(title, style: TextStyle(color: color, fontSize: 18))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
