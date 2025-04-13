import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:first/Screens/Signup/sighnUp.dart';



import 'package:first/firebase_options.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: 
    //HomePage()
    SighnUp()
    );
  }
}

/*class HomePage extends StatelessWidget {
  //const HomePage({super.key});
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    var collectionRef = firestore.collection("notes");
    return Scaffold(
      appBar: AppBar(title: Text("FireNote")),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var docRef = await collectionRef.add({
            "title": "New Note",
            "desc": "My note desc",
          });
          print("Doc  created :${docRef.id}");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
*/


