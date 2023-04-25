import 'package:flutter/material.dart';
import 'package:flutter_application_33/Login/optionpage1.dart';
import 'package:get/get.dart';

import 'optionpage.dart';

class languageSelection extends StatefulWidget {
  const languageSelection({Key? key}) : super(key: key);

  @override
  State<languageSelection> createState() => _languageSelectionState();
}

class _languageSelectionState extends State<languageSelection> {
  final items = ["English", "Hindi"];
  String? value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Padding(padding: EdgeInsets.only(left: 10)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/language(2).png'))),
            ),
          ),
          Center(
              child: Text(
            "Choose your language",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
          SizedBox(
            height: 10,
          ),

          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey, // Background color
              ),
              onPressed: () {
                var locale = Locale('en', 'US');
                Get.updateLocale(locale);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => optionpage()));
              },
              child: Text("English")),
          SizedBox(
            height: 10,
          ),
          Text(
            "Or",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey, // Background color
              ),
              onPressed: () {
                var locale = Locale('hi', 'IN');
                Get.updateLocale(locale);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => optionpage1()));
              },
              child: Text("हिंदी")),
        ],
      ),
    );
  }
}
