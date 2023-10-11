import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'home_controller.dart';

class Home extends StatelessWidget {
  final controller = Get.put(HomeController.Default());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Next Route'),
              onPressed: () {
                print("on pressed");
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { print("on pressed"); },
        child: Icon(Icons.add),
      ),
    );
  }
}