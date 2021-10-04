import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  Expanded buildNoteContainers1(Color color) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          print('buildNoteContainers1 color: $color');
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  Expanded buildNoteContainers2({Color tus}) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          print('buildNoteContainers2 color: $tus');
        },
        child: Container(
          color: tus,
        ),
      ),
    );
  }

  Column buildNoteContainers3({Color color1, Color color2, Color color3}) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: color1,
          ),
        ),
        Expanded(
          child: Container(
            color: color2,
          ),
        ),
        Expanded(
          child: Container(
            color: color3,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff253238),
        title: Text('Sabak 05'),
      ),
      body: Column(
        children: [
          buildNoteContainers1(Color(0xffF44336)),
          buildNoteContainers2(
            tus: Color(0xffF89703),
          ),
          buildNoteContainers1(Color(0xffFEEA3B)),
          buildNoteContainers2(
            tus: Color(0xff4CAF50),
          ),
          buildNoteContainers1(Color(0xff2D9688)),
          buildNoteContainers1(Color(0xff2996F4)),
          buildNoteContainers1(Color(0xff9B27B1)),
        ],
      ),
    );
  }
}

Cola magazindenAlipKel(Money money) {
  //magazinden 1l cola alip kel
  if (money == null) {
    return null;
  } else {
    return Cola(liter: '1');
  }
}

class Cola {
  String liter;
  Cola({this.liter});
}

class Bread {
  int shtuk;
  Bread({this.shtuk});
}

class Money {
  int summa;
  Money({this.summa});
}

class BlackCola {}

class BirinchiBarak {}
