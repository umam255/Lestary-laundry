// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

Future<void> fetchDataWithToken() async {
  final token =
      '47ee34f8e9e5067d801adef68086b7b1e10748d039dcf3aa0a9180b6f23a338f1cc6081c4552d0871829e896521772470ff7e5eeeeb5a03dddac97ae6ff5d7b2ed9d46990fcfe5964ce922d602a4c640f8d57db69dfd083f3b9c649e736f67876eb851b176ccbdc19f8a2c2413fcdb6be79c998101f3c271bfb178b66ede8a4f';
  final url =
      'https://lestari.mahrusrohisyam.com/api/products?populate=*&filters[productType][\$eq]=kilogram';

  try {
    final response = await http.get(
      Uri.parse(url),
      headers: {'Authorization': 'Bearer $token'},
    );
    print("URL : ${url}");

    if (response.statusCode == 200) {
      // Request sukses, lakukan sesuatu dengan data yang diterima
      print('SUCCESS :${response.body}');
    } else {
      // Error pada request
      print('FAILED: ${response.statusCode}');
    }
  } catch (e) {
    // Error pada koneksi atau pengolahan data
    print('Error: $e');
  }
}

void main() async {
  // print(fetchDataWithToken());
  await fetchDataWithToken();
}
