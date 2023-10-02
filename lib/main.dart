import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:logger/logger.dart';
import 'data/remote/api_client/rest_client.dart';

var logger = Logger(
  printer: PrettyPrinter(),
);

var loggerNoStack = Logger(
  printer: PrettyPrinter(methodCount: 0),
);

void main() {
  // TODO: - This is for debug
  final client = RestClient.Default();
  client.getGames().then((it) => logger.i("Received game list is ${it}"));

  runApp(const GetMaterialApp(home: Home()));
}