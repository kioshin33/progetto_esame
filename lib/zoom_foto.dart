import 'package:flutter/material.dart';
import 'contattami.dart';
import 'about_me.dart';
import 'main.dart';
import 'package:google_fonts/google_fonts.dart';

class zoom_foto extends StatelessWidget {
  final String img;
  final String descrizione;

  const zoom_foto({
    required this.img,
    required this.descrizione,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(199, 129, 157, 161),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        shadowColor: Colors.green,
        toolbarHeight: 80,
        backgroundColor: const Color.fromARGB(255, 129, 157, 161),
        foregroundColor: const Color.fromARGB(255, 130, 71, 53),
        title: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const MainApp()));
          },
          child: Text(
            "Alessia Manuela",
            style: GoogleFonts.playfairDisplay(
                fontStyle: FontStyle.italic,
                fontSize: 40,
                fontWeight: FontWeight.w500),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const About_me()));
                },
                child: Text(
                  "About me",
                  style: GoogleFonts.playfairDisplay(
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
                  style: GoogleFonts.playfairDisplay(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 19),
                )),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: InteractiveViewer(
                boundaryMargin: const EdgeInsets.all(20.0),
                minScale: 0.01,
                maxScale: 6.0,
                child: Image(image: AssetImage(img))
              ),
            ),
            const SizedBox(height: 2),
            Expanded(
              flex: 1,
              child: Text(
                descrizione,
                style: GoogleFonts.bonaNova(
                    fontSize: 30, fontStyle: FontStyle.normal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
