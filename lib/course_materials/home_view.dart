import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  void playSound(int index) {
    // tuura notani oynotuu

    final player = AudioCache();

    // call this method when desired
    player.play('notes/note$index.wav');
  }

  Widget getFlatButton() {
    return Padding(
      padding: const EdgeInsets.all(38.0),
      child: FlatButton(
        color: Colors.red,
        onPressed: () {},
        child: Container(),
      ),
    );
  }

  // Custom button => Container (turduu dizayn kiluu uchun kerke)
  // Custom button => GestureDetector (widgetti basa ala turgan kiluu)
  // Custom button => InkWell - button jasoo uchun koldonso bolot

  Expanded buildNoteContainers1(Color color, int indx) {
    return Expanded(
      child: GestureDetector(
        // onTap: () => playSound(indx), kiska jolu, bir funkciya bolso kiska jolun koldonso bolot
        onTap: () {
          playSound(indx);
          // changeColor(); // bashka dagi funksiyalardi chakiruu kerek bolso
          //bashka jumushtar
        }, // uzun  jolu
        child: Container(
          color: color,
        ),
      ),
    );
  }

  void changeColor() {
    //
  }

  Expanded buildNoteContainers2({Color tus, int index}) {
    return Expanded(
      child: GestureDetector(
        onTap: changeColor,
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
          buildNoteContainers1(Color(0xffF44336), 1),
          buildNoteContainers1(Color(0xffF89703), 2),
          buildNoteContainers1(Color(0xffFEEA3B), 3),
          buildNoteContainers1(Color(0xff4CAF50), 4),
          buildNoteContainers1(Color(0xff2D9688), 5),
          buildNoteContainers1(Color(0xff2996F4), 6),
          buildNoteContainers1(Color(0xff9B27B1), 7),
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

// UI, Pages, Screens, Views

class Money {
  int summa;
  Money({this.summa});
}

class BlackCola {}

class BirinchiBarak {}

class BulKlass {
  bulFunksiya() {
    //
  }
}

class BulStateLessWidget extends StatelessWidget {
  const BulStateLessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(''),
      ),
    );
  }
}
