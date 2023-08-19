import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
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
      log('elem');
      DateTime now = DateTime.now();
      // Map<String, dynamic> bookings = element.docs.;
      // log('isolate element = ${element.docs}');
      // int count = 0;

      for (var elem in element.docs) {
        Map<String, dynamic> data = elem.data();
        List booking = data['booking'];
        bool isActive = false;
        for (var bookingData in booking) {
          TimeOfDay endTime =
              (bookingData['endTime'] as String).timeOfDayFromString();
          DateTime date = (bookingData['date'] as Timestamp).toDate();
          DateTime bookedDate = DateTime(
              date.year, date.month, date.day, endTime.hour, endTime.minute);

          // log('bookedDate = $bookedDate ####### $now');
          // log('@@@@@@@ ${bookedDate.compareTo(DateTime(now.year, now.month, now.day, now.hour, now.minute))}');
          if (bookedDate.compareTo(DateTime(
                  now.year, now.month, now.day, now.hour, now.minute)) >
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
}
