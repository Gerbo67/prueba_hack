import 'package:flutter/material.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3A455B),
      appBar: appBarCustom(),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            // Caja 1 escoge su tamaño
            textFieldSearch(),

            // Caja invisible con altura
            const SizedBox(height: 20),

            // Caja 2 dimensiona al tamaño sobrante
            Flexible(
                child: ListView(
              children: [
                cardCustom(
                    text: "dribble",
                    icon: Icons.ac_unit_outlined,
                    colorsGradient: [
                      const Color(0xFFF77D75),
                      const Color(0xFF9C1A5F),
                    ]),
                cardCustom(
                    text: "dribble 2",
                    icon: Icons.access_alarms,
                    colorsGradient: [
                      const Color(0xFF4FD2F5),
                      const Color(0xFF143EAE),
                    ]),
                cardCustom(
                    text: "dribble 2",
                    icon: Icons.access_alarms,
                    colorsGradient: [
                      const Color(0xFF4FD2F5),
                      const Color(0xFF143EAE),
                    ]),
                cardCustom(
                    text: "dribble 2",
                    icon: Icons.access_alarms,
                    colorsGradient: [
                      const Color(0xFF4FD2F5),
                      const Color(0xFF143EAE),
                    ]),
              ],
            )),
          ],
        ),
      ),
    );
  }
}

// Barra de navegación
PreferredSizeWidget appBarCustom() {
  return AppBar(
    backgroundColor: const Color(0xFF3A455B),
    shadowColor: null,
    leading: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: const Text(
        "Protiaa",
        textAlign: TextAlign.start,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
      ),
    ),
    leadingWidth: 300,
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Container(
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(100))),
        ),
      )
    ],
  );
}

// Text field de busqueda
Widget textFieldSearch() {
  return TextField(
    decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white, width: 2)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white, width: 2)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white, width: 2)),
        focusColor: Colors.white,
        hoverColor: Colors.white,
        isDense: true,
        fillColor: Colors.transparent,
        hintText: "search.."),
    cursorColor: Colors.white,
    style: const TextStyle(color: Colors.white),
  );
}

// Card inicial
Widget cardCustom(
    {required String text,
    required IconData icon,
    required List<Color> colorsGradient}) {
  return Container(
    padding: const EdgeInsets.all(30),
    margin: const EdgeInsets.only(bottom: 20),
    height: 300,
    decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter, // Inicia en la parte superior
            end: Alignment.bottomCenter, // Finaliza en la parte inferior
            colors: colorsGradient),
        borderRadius: const BorderRadius.all(Radius.circular(50))),
    child: Column(
      children: [
        // Caja principal card
        Flexible(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 80),
            textCardCustomChild(text: text, fontSize: 30),
            textCardCustomChild(text: "playing", fontSize: 12),
          ],
        )),

        // Caja de abajo
        Container(
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.white, width: 5),
              borderRadius: const BorderRadius.all(Radius.circular(100))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              textCardCustomChild(text: "123"),
              textCardCustomChild(text: "Calories"),
            ],
          ),
        )
      ],
    ),
  );
}

Widget textCardCustomChild({required String text, double fontSize = 12}) {
  return Text(
    text,
    style: TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: fontSize),
  );
}
