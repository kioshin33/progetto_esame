import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
import 'models/immagine.dart';

class DatabaseImmagini {
  void inserisciImmagine() async {
    var BoxImmagini = Hive.box("Immagini");

    var immagine = Immagine(
        titolo: "foto barilla",
        tipologia: "foto persone",
        img:
            // ignore: unnecessary_string_escapes
            "C:\Users\Giorgioviva\Documents\GitHub\progetto-esame\progetto_esame\assets\barilla.jpeg");
  }
}

//1 sola immagie devo capire come aggiungerne altre seza ripetere 100 volte immagine() che è
//BRUTTO