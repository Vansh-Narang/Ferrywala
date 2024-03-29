import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_33/bottomnav/API.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  bool _isLike = true;
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController posController = TextEditingController();
    final TextEditingController nameController = TextEditingController();
    final firestore =
        FirebaseFirestore.instance.collection('Orders').snapshots();
    CollectionReference ref = FirebaseFirestore.instance.collection('Orders');
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text("Your Orders"),
        ),
        body: StreamBuilder(
            stream: FirebaseFirestore.instance.collection('Orders').snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      trailing: _isLike
                          ? Icon(Icons.favorite_outline)
                          : Icon(
                              Icons.favorite,
                              color: Color.fromARGB(255, 253, 220, 218),
                            ),
                      subtitle: Text('Bindal Juice'),
                      title: Text(snapshot.data!.docs[index]['food']),
                      onTap: () {
                        setState(() {
                          _isLike = !_isLike;
                        });

                        Api().likePost('bindal');
                      },
                    );
                  });
            }));
  }
}
