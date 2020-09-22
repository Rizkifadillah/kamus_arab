
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kamus_arab/resources/model_kamus.dart';

class ServiceData {
  var listKamus = 'json/kamus.json';


  Future<List<Datum>> loadDatum() async {
    var response = await rootBundle.loadString(listKamus);
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }

  Future<List<Datum>> load1() async {
    var response = await rootBundle.loadString('json/1.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }

  Future<List<Datum>> load2() async {
    var response = await rootBundle.loadString('json/2.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }

  Future<List<Datum>> load3() async {
    var response = await rootBundle.loadString('json/3.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }
  Future<List<Datum>> load4() async {
    var response = await rootBundle.loadString('json/4.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }
  Future<List<Datum>> load5() async {
    var response = await rootBundle.loadString('json/5.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }
  Future<List<Datum>> load6() async {
    var response = await rootBundle.loadString('json/6.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }
  Future<List<Datum>> load7() async {
    var response = await rootBundle.loadString('json/7.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }
  Future<List<Datum>> load8() async {
    var response = await rootBundle.loadString('json/8.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }
  Future<List<Datum>> load9() async {
    var response = await rootBundle.loadString('json/9.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }

  Future<List<Datum>> load10() async {
    var response = await rootBundle.loadString('json/10.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }
  Future<List<Datum>> load11() async {
    var response = await rootBundle.loadString('json/11.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }
  Future<List<Datum>> load12() async {
    var response = await rootBundle.loadString('json/12.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }
  Future<List<Datum>> load13() async {
    var response = await rootBundle.loadString('json/13.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }
  Future<List<Datum>> load14() async {
    var response = await rootBundle.loadString('json/14.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }
  Future<List<Datum>> load15() async {
    var response = await rootBundle.loadString('json/15.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }
  Future<List<Datum>> load16() async {
    var response = await rootBundle.loadString('json/16.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }
  Future<List<Datum>> load17() async {
    var response = await rootBundle.loadString('json/17.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }
  Future<List<Datum>> load18() async {
    var response = await rootBundle.loadString('json/18.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }
  Future<List<Datum>> load19() async {
    var response = await rootBundle.loadString('json/19.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }
  Future<List<Datum>> load20() async {
    var response = await rootBundle.loadString('json/20.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }
  Future<List<Datum>> load21() async {
    var response = await rootBundle.loadString('json/21.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }
  Future<List<Datum>> load22() async {
    var response = await rootBundle.loadString('json/22.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }
  Future<List<Datum>> load23() async {
    var response = await rootBundle.loadString('json/23.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }
  Future<List<Datum>> load24() async {
    var response = await rootBundle.loadString('json/24.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }
  Future<List<Datum>> load25() async {
    var response = await rootBundle.loadString('json/25.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }
  Future<List<Datum>> load26() async {
    var response = await rootBundle.loadString('json/26.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }
  Future<List<Datum>> load27() async {
    var response = await rootBundle.loadString('json/27.json');
    var res = json.decode(response);
    Iterable data = res['data'];
    return data.map((model) => Datum.fromJson(model)).toList();
  }
}