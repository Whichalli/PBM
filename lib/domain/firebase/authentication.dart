import 'dart:developer';
import 'dart:math' as Math;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

import '../../presentation/nurse_dashboard_page/controller/controller.dart';
import '../../presentation/parent_page/controller/controller.dart';
import '../../routes/app_routes.dart';
import 'firebase.dart';

class Authentication {
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  User? user;
  String? userId;
  DocumentSnapshot<Map<String, dynamic>>? resp;
  static final parentController = Get.find<ParentDashboardScreenController>();
  static final nurseController = Get.find<NurseDashboardScreenController>();
  // final RealtimeDatabase _database;
  static getCurrentUserId() {
    return _auth.currentUser?.uid;
  }

  static User? getCurrentUser() {
    return _auth.currentUser;
  }

  static logout() async {
    await _auth.signOut();
    parentController.currentPageIndex.value = 0;
    nurseController.currentPageIndex.value = 0;
    Get.offNamedUntil(AppRoutes.signInScreen, (route) => false);
  }

  static Future<String?> isLoggedIn() async {
    String? id = _auth.currentUser?.uid;
    log('UserId = $id');
    if (id != null) {
      return (await Database.read(userId: id, table: 'user'))
          .data()?['accountType'];
    }
    return null;
  }

  Future<User?> signin(
      {required AuthCredential credential, required bool isParent}) async {
    try {
      final UserCredential userCredential =
          await _auth.signInWithCredential(credential);
      user = userCredential.user;
      return user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
        // log('${e.code}');
        rethrow;
      } else if (e.code == 'invalid-credential') {
        // log('${e.code}');
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
    return user;
  }

  Future<Map<String, dynamic>> signinUsernamePassword(
    context, {
    required bool isParent,
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      user = userCredential.user;
      if (isParent) {
        resp = await Database.read(userId: user!.uid, table: 'parent');
      } else {
        resp = await Database.read(userId: user!.uid, table: 'employee');
      }
      return {'code': (resp != null) ? 200 : 404, 'user': user};
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return {'code': 404, 'user': null, 'message': 'Account does not exist'};
      } else if (e.code == 'wrong-password') {
        return {
          'code': 401,
          'user': null,
          'message': 'Invalid login credentials'
        };
      } else {
        return {'code': 500, 'user': null, 'message': 'Sorry an error occured'};
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> signup(
      {required Map<String, dynamic> data, required String accountType}) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
              email: data['email'], password: data['password']);

      user = userCredential.user;
      user?.updateDisplayName(data['name']);

      await Database.write(userId: user!.uid, data: data, table: accountType);

      await Database.write(
          userId: user!.uid,
          data: {'email': user?.email, 'accountType': accountType},
          table: 'user');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return {'code': 400, 'user': null, 'message': 'Password too weak'};
      } else if (e.code == 'email-already-in-use') {
        return {
          'code': 409,
          'user': null,
          'message': 'Account with this email already exist'
        };
      } else if (e.code == 'invalid-email') {
        return {'code': 401, 'user': null, 'message': 'Invalid email address'};
      } else {
        return {'code': 500, 'user': null, 'message': 'Sorry an error occured'};
      }
    } catch (e) {
      rethrow;
    }
    return {'code': 200, 'user': user, 'message': 'Success'};
  }
}
