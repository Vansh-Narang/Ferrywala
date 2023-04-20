import 'package:flutter/material.dart';
import 'package:flutter_application_33/map/Backend/UserCustomer.dart';

class xyz extends StatelessWidget {
  const xyz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi "),
      ),
      body: ElevatedButton(
        child: Text("add user"),
        onPressed: () {
          print("hi");
          addUser();
        },
      ),
    );
  }
}
