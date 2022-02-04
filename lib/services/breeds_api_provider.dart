import 'dart:convert';

import 'package:catsapp/models/breeds.dart';
import 'package:catsapp/res/const.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class BreedsApiProvider {

  Future<List<Breeds>> fetchBreeds() async {
    final response = await http.get(Uri.parse('https://api.thecatapi.com/v1/breeds'));
    final responseList = jsonDecode(response.body) as List<dynamic>;
    List<Breeds> m = responseList.map((e) =>  Breeds.fromJson(e)).toList();
    logger.d(m);
    return m;
  }




}
