import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../bottomnav/bottomnavy.dart';

class customerloginpage extends StatelessWidget {
  final List locale = [
    {'name': 'ENGLISH', 'locale': const Locale('en', 'US')},
    {'name': 'ಕನ್ನಡ', 'locale': const Locale('kn', 'IN')},
    {'name': 'हिंदी', 'locale': const Locale('hi', 'IN')},
  ];

  get customerPhone => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.40,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('assets/vendor2.PNG'))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 8),
            child: Text('login'.tr,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 40.0, right: 40, bottom: 10, top: 10),
            child: TextField(
              controller: customerPhone,
              cursorColor: Colors.black,
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: "phonenumber".tr,
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
              child: TextField(
                style: const TextStyle(fontSize: 18.0, color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 101, 130, 144),
                  hintText: 'username'.tr,
                  hintStyle: const TextStyle(color: Colors.white),
                  contentPadding:
                      const EdgeInsets.only(left: 20.0, bottom: 8.0, top: 8.0),
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
            width: MediaQuery.of(context).size.width * 0.85,
            height: MediaQuery.of(context).size.height * 0.05,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                style:
                    const TextStyle(fontSize: 18.0, color: Color(0xFFbdc6cf)),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 226, 226, 226),
                  hintText: 'password'.tr,
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 182, 182, 182)),
                  contentPadding:
                      const EdgeInsets.only(left: 20.0, bottom: 8.0, top: 8.0),
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
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              bottom: 20,
            ),
            child: Text("forget".tr,
                style: const TextStyle(
                  color: Color.fromARGB(255, 123, 125, 127),
                )),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.85,
            height: MediaQuery.of(context).size.height * 0.06,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: ElevatedButton(
                onPressed: () async {
                  await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Navigation1(),
                      ));
                },
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 90, 113, 124)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)))),
                child: Text(
                  'login'.tr,
                  style: const TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
          Row(children: const <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 50, right: 25),
                child: Divider(
                  thickness: 3,
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
