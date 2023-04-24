import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
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
                      subtitle: Text('Bindal Juice'),
                      title: Text(snapshot.data!.docs[index]['food']),
                    );
                  });
            }));
  }
}
