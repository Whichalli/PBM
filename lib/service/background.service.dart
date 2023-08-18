import 'dart:async';
import 'dart:developer';
import 'dart:isolate';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';
import 'package:pbm_app/domain/firebase/firebase.dart';

///The [BookingProcess] class runs checks for bookings/appointment
/// 1. To set the status active to false if the current date and time is greater than the last booking date
class BookingProcess {
  static updateBookingStatus({required String field}) async {
    Stream<QuerySnapshot<Map<String, dynamic>>> resp =
        FirebaseFirestore.instance
            .collection('bookings')
            .where(
              field,
              isEqualTo: Authentication.getCurrentUserId(),
            )
            .where('isActive', isEqualTo: true)
            .snapshots();
    resp.forEach((element) {
      DateTime now = DateTime.now();
      // Map<String, dynamic> bookings = element.docs.;
      // log('isolate element = ${element.docs}');
      // int count = 0;

      for (var elem in element.docs) {
        Map<String, dynamic> data = elem.data();
        List booking = data['booking'];
        bool isActive = false;
        for (var bookingData in booking) {
          if ((bookingData['date'] as Timestamp)
                  .toDate()
                  .compareTo(DateTime(now.year, now.month, now.day)) >
              0) {
            isActive = true;
          }
        }
        if (!isActive) {
          data['isActive'] = isActive;
          Database.update(userId: elem.id, data: data, table: 'bookings');
        }
      }
    });
  }

  // runTask(){
  //   Isolate.spawn(worker, SendPort);
  //   // Listen for messages from the isolate.
  //   receivePort.listen((message) {
  //     print('The message is: $message');
  //   });
  // }
}
