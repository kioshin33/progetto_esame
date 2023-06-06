// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'contattami.dart';
import 'zoom_foto.dart';
import 'about_me.dart';
import 'foto_album.dart';

/*per attivare l'icona della scheda che si trova in assets logo si 
deve fare FLUTTER RUN FLUTTER_LAUNCHER_ICONS sul terminal sulla cartella, se non va va fatto
flutter clean , dopo aver fatto run va fatto pug get e dovrebbe andare*/
void main() {
  runApp(const MaterialApp(
    home: MainApp(),
    debugShowCheckedModeBanner: false,
    title: "Alessia Manuela",
  ));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(199, 129, 157, 161),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        shadowColor: Colors.green,
        toolbarHeight: 80,
        backgroundColor: Color.fromARGB(255, 129, 157, 161),
        foregroundColor: Color.fromARGB(255, 130, 71, 53),
        title: Text(
          "Alessia Manuela",
          style: GoogleFonts.playfairDisplay(
              fontStyle: FontStyle.italic,
              fontSize: 40,
              fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About_me()));
                },
                child: Text(
                  "About me",
                  style: GoogleFonts.bonaNova(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 19),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Contattami()));
                },
                child: Text(
                  "Contattami",
                  style: GoogleFonts.bonaNova(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 19),
                )),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: GridView.count(
            //scrolla se ci sono piu foto
            crossAxisCount: 3, //foto per riga
            crossAxisSpacing: 30,
            mainAxisSpacing: 30,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => zoom_foto(
                        img:
                            'aqua.jpeg',
                        descrizione:
                            'metti descrizione bella a tutte le foto',
                      ),
                    ),
                  );
                },
                child: foto_album(
                    foto:
                        "aqua.jpeg"),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => zoom_foto(
                        img:
                            'blackwhite.png',
                        descrizione:
                            'metti descrizione bella a tutte le foto',
                      ),
                    ),
                  );
                },
                child: foto_album(
                    foto:
                        "blackwhite.png"),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => zoom_foto(
                        img:
                            'paint.png',
                        descrizione:
                            'metti descrizione bella a tutte le foto',
                      ),
                    ),
                  );
                },
                child: foto_album(
                    foto:
                        "paint.png"),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => zoom_foto(
                        img:
                            'barilla.jpeg',
                        descrizione:
                            'metti descrizione bella a tutte le foto',
                      ),
                    ),
                  );
                },
                child: foto_album(
                    foto:
                        "barilla.jpeg"),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => zoom_foto(
                        img:
                            'traffico.jpeg',
                        descrizione:
                            'metti descrizione bella a tutte le foto',
                      ),
                    ),
                  );
                },
                child: foto_album(
                    foto:
                        "traffico.jpeg"),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => zoom_foto(
                        img:
                            'creation.jpg',
                        descrizione:
                            'metti descrizione bella a tutte le foto',
                      ),
                    ),
                  );
                },
                child: foto_album(
                    foto:
                        "creation.jpg"),
              ),

              

        

            ]),
      ),
    );
  }
}
