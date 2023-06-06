import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class Immagine {
  @HiveField(1)
  String titolo;

  @HiveField(2)
  String tipologia;

  @HiveField(3)
  String img;

  Immagine({required this.titolo, required this.tipologia, required this.img});
}
