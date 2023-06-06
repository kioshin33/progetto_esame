// ignore_for_file: dead_code
import 'package:flutter/material.dart';

class foto_album extends StatelessWidget {
  final String foto;
  const foto_album({super.key, required this.foto});

  @override
  Widget build(BuildContext context) {
    return Image(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      image: AssetImage(foto),
      fit: BoxFit.cover,
    );
  }
}
