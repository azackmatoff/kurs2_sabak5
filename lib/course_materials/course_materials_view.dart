import 'package:flutter/material.dart';

// const double bulConstPeremenniy = 5.5;
// Sirtta bolso, const dep tuz koldono alasin

class CourseMaterialsView extends StatefulWidget {
  const CourseMaterialsView({Key key}) : super(key: key);

  @override
  _CourseMaterialsViewState createState() => _CourseMaterialsViewState();
}

class _CourseMaterialsViewState extends State<CourseMaterialsView> {
  List<String> adamdar = [
    'Azamat',
    'Aygul',
    'Turat',
    'Akyl',
  ];
  List<String> okuuchular = [
    'Azamat 2',
    'Aygul 2',
    'Turat 2',
    'Akyl 2',
  ];

  List<int> baalar = <int>[1, 232, 4];

  Person person1 = Person(name: 'Azamat', age: 38);
  Person person2 = Person(name: 'Aygul', age: 18);
  Person person3 = Person(name: 'Akyl', age: 22);
  Person person4 = Person(name: 'Turat', age: 33);

  List<Person> persons = <Person>[];

  void addPersons() {
    persons.add(person1);
    persons.add(person2);
    persons.add(person3);
  }

  dynamic bulDynamicPeremenniy;
  var bulVarPeremenniy;
  final int bulFinalPeremenniy = 12;
  static const double bulConstPeremenniy = 5.5;

  @override
  void initState() {
    super.initState();
    bulDynamicPeremenniy = 123.12;
    bulVarPeremenniy = persons;

    print('bulDynamicPeremenniy: ${bulDynamicPeremenniy.runtimeType}');
    print('bulVarPeremenniy: ${bulVarPeremenniy.runtimeType}');

    bulDynamicPeremenniy = person1;
    bulVarPeremenniy = 1231;

    print('2 bulDynamicPeremenniy: ${bulDynamicPeremenniy.runtimeType}');
    print('2 bulVarPeremenniy: ${bulVarPeremenniy.runtimeType}');

    // Bul ekoo kata beret, jani danniy bere albaybiz
    // bulFinalPeremenniy = 12312;
    // bulConstPeremenniy = 232.4;

    // for loop
    for (int i = 0; i < 100; i++) {
      // ODD 1,3,5,7,.., EVEN 0,2,4,6,8,.. numbers

      //  4 = 3 + 1
      //  3 / 3 = 0
      //  1

      //modulo, kaldik, 4/3 = 1 modulo(kaldik) 1
      if (i % 2 == 0) {
        baalar.add(i);
      } else if (i == 11) {
        baalar.add(i);
      } else {
        // print('odd');
      }
      // baalar.add(i * 2);
    }

    // print(baalar.length); // tizmede kancha nerse bar, shtuk

    // print(baalar);

    // final index = baalar.indexOf(68); // index in tabat, kanchanchi turganin tabat

    // print('68 kanchanchi turat: $index');

    // int sixtyEight = baalar.elementAt(34); // indexke karap ichindegi nerseni tabat

    // print('68: $sixtyEight');

    // adamdar.add('Janara'); // tizmege 1 nerse koshuu
    // adamdar.addAll(okuuchular); // tizmege bashka tizme koshuu

    // print('adamdar.lenght: ${adamdar.length}');

    // versiya 1
    // for (int i = 0; i < adamdar.length; i++) {
    //   print('v1 adam i: $i');
    // }

    // //versiya 2, ushunu koldonobuz
    // for (var adam in adamdar) {
    //   print('v2 adam: $adam');
    // }

    // //versiya 3, koldonboy ele koygula
    // adamdar.forEach((adam) {
    //   print('v3 adam: $adam');
    // });

    // print(adamdar.indexOf(
    //     'Azamat')); // tizmede kanchanchi turat? tizme 0-don bashtap esepteyt

    // addPersons();

    // print("person4: ${person4.name}");
    // print("person4: ${person4.age}");

    // for (var person in persons) {
    //   print(person.name + ' ' + person.age.toString());
    // }

    // persons
    //     .forEach((person) => print(person.name + ' ' + person.age.toString()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('data'),
      ),
    );
  }
}

//Person = Adam
// Klass, Model = Object
class Person {
  String name;
  int age;

  //versiya 1, uzun jolu
  // Person({String name, int age}) {
  //   this.age = age;
  //   this.name = name;
  // }

  //versiya 2, kiska jolu
  Person({this.name, this.age});
}

// Alan Kay, OOP,
