import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DbAPI {
  static readData() async {
    CollectionReference _collectionRef =
        FirebaseFirestore.instance.collection('test');
    // Get docs from collection reference
    final querySnapshot = await _collectionRef.get().then((value) {
      final allData = value.docs.map((doc) => doc.data()).toList();
      return allData;
    }, onError: (e) => print("Error: $e"));

    print(querySnapshot);
  }
}
