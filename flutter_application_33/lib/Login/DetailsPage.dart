import 'package:flutter/material.dart';

import '../bottomnav/bottomnavy.dart';

final _formKey = GlobalKey<FormState>();

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text("Register yourself"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 40.0, right: 40, bottom: 10, top: 10),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                // controller: customerPhone,
                cursorColor: Colors.black,
                style: const TextStyle(color: Colors.black, fontSize: 16),
                decoration: InputDecoration(
                  hintText: "Enter Your Category",
                  prefixIcon: const Icon(Icons.category, color: Colors.black),
                  labelStyle: TextStyle(color: Colors.blue.withOpacity(0.9)),
                  filled: true,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  fillColor: Colors.grey.withOpacity(0.3),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide:
                          const BorderSide(width: 0, style: BorderStyle.none)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 40.0, right: 40, bottom: 10, top: 10),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                // controller: customerPhone,
                cursorColor: Colors.black,
                style: const TextStyle(color: Colors.black, fontSize: 16),
                decoration: InputDecoration(
                  hintText: "Enter Your Company Name",
                  prefixIcon: const Icon(Icons.business, color: Colors.black),
                  labelStyle: TextStyle(color: Colors.blue.withOpacity(0.9)),
                  filled: true,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  fillColor: Colors.grey.withOpacity(0.3),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide:
                          const BorderSide(width: 0, style: BorderStyle.none)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 40.0, right: 40, bottom: 10, top: 10),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                // controller: customerPhone,
                cursorColor: Colors.black,
                style: const TextStyle(color: Colors.black, fontSize: 16),
                decoration: InputDecoration(
                  hintText: "Enter Location of Your Shop",
                  prefixIcon:
                      const Icon(Icons.shop_rounded, color: Colors.black),
                  labelStyle: TextStyle(color: Colors.blue.withOpacity(0.9)),
                  filled: true,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  fillColor: Colors.grey.withOpacity(0.3),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide:
                          const BorderSide(width: 0, style: BorderStyle.none)),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (!_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Enter the values')),
                    );
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Navigation1(),
                        ));
                  }
                },
                child: const Text("Done"))
          ],
        ),
      ),
    );
  }
}
