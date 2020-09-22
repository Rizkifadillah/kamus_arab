// To parse this JSON data, do
//
//     final kamus = kamusFromJson(jsonString);

import 'dart:convert';

Kamus kamusFromJson(String str) => Kamus.fromJson(json.decode(str));

String kamusToJson(Kamus data) => json.encode(data.toJson());

class Kamus {
  Kamus({
    this.data,
  });

  List<Datum> data;

  factory Kamus.fromJson(Map<String, dynamic> json) => Kamus(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    this.id,
    this.huruf,
    this.kata,
    this.arti,
    this.kalimat,
    this.angka,
  });

  String id;
  String huruf;
  String kata;
  String arti;
  String kalimat;
  String angka;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    huruf: json["huruf"],
    kata: json["kata"],
    arti: json["arti"],
    kalimat: json["kalimat"],
    angka: json["angka"] == null ? null : json["angka"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "huruf": huruf,
    "kata": kata,
    "arti": arti,
    "kalimat": kalimat,
    "angka": angka == null ? null : angka,
  };
}
