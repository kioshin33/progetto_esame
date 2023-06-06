// ignore_for_file: prefer_const_constructors

/*VEDERE PK NON VA IL LINK DI INSTAGRAM I HO COPIATO IL METODO URL LAUNCHER DA UN ES IN UI 
è PERFETTAMENTE FUNZIOANTE */
import 'package:flutter/material.dart';
import 'about_me.dart';
import 'main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Contattami extends StatelessWidget {
  final controller_nome = TextEditingController();
  final controller_email = TextEditingController();
  final controller_titolo = TextEditingController();
  final controller_messaggio = TextEditingController();
  Contattami({super.key});

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            ),
            Divider(
              indent: MediaQuery.of(context).size.width / 2.5,
              endIndent: MediaQuery.of(context).size.width / 2.5,
              color: Color.fromARGB(255, 129, 157, 161),
              thickness: 2,
            ),
            Text("Scrivimi qualcosa",
                style: GoogleFonts.playfairDisplay(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w200,
                    fontSize: 22)),
            Divider(
              indent: MediaQuery.of(context).size.width / 2.5,
              endIndent: MediaQuery.of(context).size.width / 2.5,
              color: Color.fromARGB(255, 129, 157, 161),
              thickness: 2,
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  TextField(
                    controller: controller_nome,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "Nome",
                      fillColor: Color.fromARGB(255, 129, 157, 161),
                      hintStyle: GoogleFonts.playfairDisplay(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 18),
                      border: InputBorder.none,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  TextField(
                    controller: controller_email,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "Email",
                      fillColor: Color.fromARGB(255, 129, 157, 161),
                      hintStyle: GoogleFonts.playfairDisplay(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 18),
                      border: InputBorder.none,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  TextField(
                    controller: controller_titolo,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "Titolo",
                      fillColor: Color.fromARGB(255, 129, 157, 161),
                      hintStyle: GoogleFonts.playfairDisplay(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 18),
                      border: InputBorder.none,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  TextField(
                    controller: controller_messaggio,
                    maxLines: 7,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 129, 157, 161),
                      hintText: "Messaggio",
                      hintStyle: GoogleFonts.playfairDisplay(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 18),
                      border: InputBorder.none,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  MaterialButton(
                      height: 60.0,
                      minWidth: double.infinity,
                      color: Color.fromARGB(255, 129, 157, 161),
                      onPressed: () {},
                      child: Text(
                        "Invia",
                        style: GoogleFonts.playfairDisplay(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 25),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 129, 157, 161),
        selectedIconTheme: IconThemeData(
          color: Color.fromARGB(255, 129, 157, 161),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.whatsapp,
              color: Color.fromARGB(210, 0, 0, 0),
            ),
            label: 'Whatsapp',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.instagram,
                color: Color.fromARGB(210, 0, 0, 0),
              ),
              label: 'Instagram',
              activeIcon: GestureDetector(
                onTap: () {
                  _launchUrl();
                },
              )),
        ],
        selectedItemColor: Colors.black,
        unselectedLabelStyle: GoogleFonts.playfairDisplay(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w300,
            fontSize: 19),
        unselectedItemColor: Colors.black,
        selectedLabelStyle: GoogleFonts.playfairDisplay(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w300,
            fontSize: 19),
      ),
    );
  }

  Future<void> _launchUrl() async {
    final Uri _url = Uri.parse('https://www.instagram.com/alessiammanuela/');
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
