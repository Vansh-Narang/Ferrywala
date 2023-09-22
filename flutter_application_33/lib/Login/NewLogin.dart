import 'package:flutter/material.dart';
import 'package:flutter_application_33/bottomnav/bottomnavy.dart';
import 'package:get/get.dart';

import 'DetailsPage.dart';

final customerPhone = TextEditingController();
final _formKey = GlobalKey<FormState>();

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.40,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/vendor2.PNG'))),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 42, vertical: 8),
              child: Text("Welcome to FerryWala",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 40.0, right: 40, bottom: 10, top: 10),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 10) {
                    return 'Please enter in valid format';
                  }
                  return null;
                },
                controller: customerPhone,
                keyboardType: TextInputType.number,
                cursorColor: Colors.black,
                style: const TextStyle(color: Colors.black, fontSize: 16),
                decoration: InputDecoration(
                  hintText: "Enter Your Phone Number",
                  prefixIcon: const Icon(Icons.phone, color: Colors.black),
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
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.70,
              height: MediaQuery.of(context).size.height * 0.07,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  style: const TextStyle(fontSize: 16.0, color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 101, 130, 144),
                    hintText: 'Enter your Name',
                    hintStyle: const TextStyle(color: Colors.white),
                    contentPadding: const EdgeInsets.only(
                        left: 20.0, bottom: 8.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.70,
              height: MediaQuery.of(context).size.height * 0.07,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  obscureText: true,
                  style:
                      const TextStyle(fontSize: 16.0, color: Color(0xFFbdc6cf)),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 226, 226, 226),
                    hintText: "Enter your Password",
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 182, 182, 182)),
                    contentPadding: const EdgeInsets.only(
                        left: 20.0, bottom: 8.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 226, 226, 226)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(
                left: 46,
                bottom: 20,
              ),
              child: Text("Forgot Password ?",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 123, 125, 127),
                  )),
            ),
            SizedBox(
                width: 50,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 90, 113, 124)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15)))),
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
                                builder: (context) => const DetailsPage(),
                              ));
                        }
                      },
                      child: Text("Continue - >")),
                ))
            // Container(
            //   width: MediaQuery.of(context).size.width * 0.85,
            //   height: MediaQuery.of(context).size.height * 0.06,
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(
            //       horizontal: 40,
            //     ),
            //     child: ElevatedButton(
            //       onPressed: () async {
            //         await Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //               builder: (context) => Navigation1(),
            //             ));
            //       },
            //       style: ButtonStyle(
            //           foregroundColor: MaterialStateProperty.all(Colors.white),
            //           backgroundColor: MaterialStateProperty.all(
            //               const Color.fromARGB(255, 90, 113, 124)),
            //           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            //               RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(15)))),
            //       // child: TextButton(
            //       //   onPressed: () {
            //       //     if (!_formKey.currentState!.validate()) {
            //       //       // If the form is valid, display a snackbar. In the real world,
            //       //       // you'd often call a server or save the information in a database.
            //       //       ScaffoldMessenger.of(context).showSnackBar(
            //       //         const SnackBar(content: Text('Enter the values')),
            //       //       );
            //       //     } else {
            //       //       Navigator.push(
            //       //         context,
            //       //         MaterialPageRoute(
            //       //             builder: (context) => DetailsPage()),
            //       //       );
            //       //     }
            //       //   },
            //       child: const Text(
            //         "Continue - >",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 20,
            //             fontWeight: FontWeight.w600),
            //       ),
            //       // )
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
