import 'package:assignment4/get_book_name.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'book_model.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'book_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Library'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /*final db = FirebaseFirestore.instance;
  List<String> docIDs = [];

  Future fetchData() async {
    await db.collection("MyLibrary").get().then(
          (snapshot) => snapshot.docs.forEach(
            (document) {
              docIDs.add(document.reference.id);
            },
          ),
        );
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: books.map((e) => BookTile(book: e)).toList(),
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Text("hi")),
    );
  }
}

class BookTile extends StatelessWidget {
  final Book book;

  const BookTile({required this.book, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 1),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30.0,
          backgroundImage:
          NetworkImage(book.imageURL.toString()),
          backgroundColor: Colors.transparent,
        ),
        title: Text(book.name.toString(),style: TextStyle(fontWeight: FontWeight.bold),),
      ),
    );
  }
}
