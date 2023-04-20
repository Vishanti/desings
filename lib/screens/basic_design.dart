import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.asset('assets/landscape_image.jpeg'),
        const Title(),
        const ActionButton(),
        const Description()
      ],
    ));
  }
}

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: const Text(
          'Est id aute id do reprehenderit cupidatat id cillum proident ut est tempor nulla tempor. Labore labore tempor minim reprehenderit nisi tempor commodo cillum quis. Ipsum aliqua cupidatat voluptate aliqua velit dolore laboris ea eu non culpa magna aute. Mollit sint velit officia fugiat culpa laboris commodo pariatur esse deserunt dolor.'),
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const <Widget>[
          CustomButton(icon: Icons.call, title: 'Call'),
          CustomButton(icon: Icons.send, title: 'Route'),
          CustomButton(icon: Icons.share, title: 'Shared'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String title;

  const CustomButton({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue),
        Text(title, style: const TextStyle(color: Colors.blue))
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text('Oeschinen Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Oeschinen Lake Campground',
                  style: TextStyle(color: Colors.black45)),
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );
  }
}
