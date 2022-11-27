import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

/*
class GetBookName extends StatelessWidget {
  final String docID;

  const GetBookName({required this.docID}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    CollectionReference books = FirebaseFirestore.instance.collection("MyLibrary");
    return FutureBuilder<DocumentSnapshot>(builder: ((context,snapshot) {

      if(snapshot.connectionState == ConnectionState.done){
        Map<String,dynamic> data = snapshot.data!.data() as Map<String,dynamic>;
        return Text("name: ${data['name']}");
      }
    }));

  }
}
*/
