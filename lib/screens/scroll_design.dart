import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff5EE8C5), Color(0xff30BAD6)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.5, 0.5])),
      child: PageView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: const [Page1(), Page2()],
      ),
    ));
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [Background(), MainContent()],
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Image.asset('assets/scroll-1.png'),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                backgroundColor: const Color(0xff0098FA),
                shape: const StadiumBorder()),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text('Bienvenido',
                  style: TextStyle(color: Colors.white, fontSize: 30)),
            )),
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          const Text('11°',
              style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          const Text('Miércoles',
              style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          Expanded(child: Container()),
          const Icon(
            Icons.keyboard_arrow_down,
            size: 100,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
