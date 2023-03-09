import 'dart:convert';
import 'package:flutter_application_3/model/model.dart';
import 'package:http/http.dart' as http;

Future<Welcome> fetchAlbum() async {
  final response = await http.get(Uri.parse("http://cgprojects.in/flutter/"));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    print(response.body);
    return Welcome.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
