import 'package:flutter/material.dart';
import 'package:flutter_application_33/bottomnav/bottomnavy.dart';
import 'package:flutter_application_33/map/MapScreen.dart';
import 'package:get/get.dart';

class sellerloginpage extends StatelessWidget {
  sellerloginpage({super.key});
  final items = [
    "vegetables".tr,
    "fruits".tr,
    "washer".tr,
    "food".tr,
    "clothes".tr
  ];
  TextEditingController customerPhone = TextEditingController();

  String? value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('assets/vendor2.PNG'))),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 42, vertical: 8),
            child: Text("login".tr,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: TextField(
              controller: customerPhone,
              cursorColor: Colors.black,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: "phonenumber".tr,
                prefixIcon: Icon(Icons.phone, color: Colors.black),
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
            height: 13,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, bottom: 10),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.grey, width: 1)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: value,
                  iconSize: 36,
                  isExpanded: true,
                  items: items.map(buildMenuItem).toList(),
                  onChanged: (value) => setState(() => this.value = value),
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.70,
            height: MediaQuery.of(context).size.height * 0.07,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                style: TextStyle(fontSize: 18.0, color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 101, 130, 144),
                  hintText: 'username'.tr,
                  hintStyle: TextStyle(color: Colors.white),
                  contentPadding:
                      EdgeInsets.only(left: 20.0, bottom: 8.0, top: 8.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
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
                style: TextStyle(fontSize: 18.0, color: Color(0xFFbdc6cf)),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 226, 226, 226),
                  hintText: 'password'.tr,
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 182, 182, 182)),
                  contentPadding:
                      EdgeInsets.only(left: 20.0, bottom: 8.0, top: 8.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 226, 226, 226)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 40,
              bottom: 20,
            ),
            child: Text("forget".tr,
                style: TextStyle(
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
                child: Text(
                  'login'.tr,
                  style: TextStyle(fontSize: 25),
                ),
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 90, 113, 124)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)))),
              ),
            ),
          ),
          Row(children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 25),
                child: Divider(
                  thickness: 3,
                ),
              ),
            ),
            Text("or".tr,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800])),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(right: 50, left: 25),
              child: Divider(
                thickness: 3,
              ),
            )),
          ]),
        ],
      ),
    );
  }

  setState(String? Function() param0) {}
}

DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
    value: item,
    child: Text(
      item,
      style: TextStyle(fontSize: 20),
    ));
