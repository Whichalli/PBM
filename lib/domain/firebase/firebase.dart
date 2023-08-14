import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Database {
  static final collection = FirebaseFirestore.instance;
  static final storage = FirebaseStorage.instance;
  static Future<dynamic> write(
      {required String userId,
      required Map<String, dynamic> data,
      required String table}) async {
    try {
      await collection.collection(table).doc('/$userId').set(data);
    } catch (e) {
      e.printError();
      rethrow;
    }
  }

  static DocumentReference<Map<String, dynamic>> readStream(
      {required String userId, required String table}) {
    try {
      return collection.collection(table).doc('/$userId');
    } catch (e) {
      rethrow;
    }
  }

  static Future<DocumentSnapshot<Map<String, dynamic>>> read(
      {required String userId, required String table}) async {
    try {
      return await collection.collection(table).doc('/$userId').get();
    } catch (e) {
      rethrow;
    }
  }

  static CollectionReference<Map<String, dynamic>> readCollection(
      {required String parentTable,
      required String childTable,
      required String id}) {
    try {
      return collection
          .collection(parentTable)
          .doc('/$id')
          .collection(childTable);
    } catch (e) {
      rethrow;
    }
  }

  static Future<dynamic> writeCollection(
      {required String id,
      required Map<String, dynamic> data,
      required String parentTable,
      required String childTable}) async {
    try {
      var req = collection
          .collection(parentTable)
          .doc('/$id')
          .collection(childTable)
          .doc();
      await req.set(data);
      return req.id;
    } catch (e) {
      e.printError();
      rethrow;
    }
  }

  static Future<dynamic> updateCollection(
      {required String id,
      required Map<String, dynamic> data,
      required String docId,
      required String parentTable,
      required String childTable}) async {
    try {
      await collection
          .collection(parentTable)
          .doc('/$id')
          .collection(childTable)
          .doc('/$docId')
          .update(data);
    } catch (e) {
      e.printError();
      rethrow;
    }
  }

  static Stream<QuerySnapshot<Map<String, dynamic>>> search(
      {required String value, required String table}) async* {
    try {
      yield* collection.collection(table).snapshots();
    } catch (e) {
      rethrow;
    }
  }

  static Future<dynamic> update(
      {required String userId,
      required Map<String, dynamic> data,
      required String table}) async {
    try {
      await collection.collection(table).doc('/$userId').update(data);
    } catch (e) {
      rethrow;
    }
  }

  static Future<dynamic> delete(
      {required String userId, required String table}) async {
    try {
      await collection.collection(table).doc('/$userId').delete();
    } catch (e) {
      rethrow;
    }
  }

  static Future<dynamic> uploadFile(
      {required File file, required String path}) async {
    try {
      final snapshot = await storage
          .ref()
          .child('$path/${Random.secure().nextInt(88888) + 11111}')
          .putFile(file);
      return await snapshot.ref.getDownloadURL();
    } catch (e) {
      print('error occured');
    }
  }
}
