// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'contattami.dart';
import 'main.dart';
import 'package:google_fonts/google_fonts.dart';

class About_me extends StatelessWidget {
  const About_me({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(199, 129, 157, 161),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        backgroundColor: Color.fromARGB(200, 129, 157, 161),
        foregroundColor: Color.fromARGB(255, 130, 71, 53),
        title: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MainApp()));
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
                      MaterialPageRoute(builder: (context) => About_me()));
                },
                child: Text(
                  "About me",
                  style: GoogleFonts.bonaNova(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
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
                      fontSize: 18),
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("sfondo_about_me.png"),
                  opacity: 0.7,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage("alessia.jpg"),
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width / 3,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Policoro è la mia casa.\nÈ qui che, grazie alle uscite con gli amici,\nho scoperto i meravigliosi dettagli del paese\nche mi hanno in seguito portata ad un grande desiderio di ricordarli per sempre grazie a delle fotografie.\nÈ proprio nel periodo del covid che ho iniziato il mio percorso creativo:\ndipinti, sculture in argilla, ceramica..\nÈ solo grazie alla riflessione e voglia di cambiare di quel periodo\nche le mie passioni sono diventate sempre più forti.\nLa fotografia è ciò che mi rappresenta meglio:\nLo scatto che dura per sempre.\nI momenti, i dettagli,\nle cose più particolari verranno come “intrappolati” nello schermo, dove potranno essere ammirati per sempre.",
                    style: GoogleFonts.bonaNova(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 21),
                  ),
                  Divider(
                    height: 50,
                    thickness: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Developers",
                        style: GoogleFonts.sourceSerifPro(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.normal,
                            fontSize: 20),
                      )
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    CircleAvatar(
                      radius: 43,
                      backgroundImage: AssetImage("chantal.jpg"),
                    ),
                    Text("Ida Chantal Vivacqua",
                        style: GoogleFonts.bonaNova(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 19)),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
                      width: MediaQuery.of(context).size.width / 4,
                    ),
                    CircleAvatar(
                      radius: 43,
                      backgroundImage: AssetImage("fabrizio.jpg"),
                    ),
                    Text("Fabrizio La Volpe",
                        style: GoogleFonts.bonaNova(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 19)),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
