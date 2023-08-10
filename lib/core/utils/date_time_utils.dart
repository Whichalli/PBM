import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

const String dateTimeFormatPattern = 'dd/MM/yyyy';

extension DateTimeExtension on DateTime {
  /// Return a string representing [date] formatted according to our locale
  String format([
    String pattern = dateTimeFormatPattern,
    String? locale,
  ]) {
    if (locale != null && locale.isNotEmpty) {
      initializeDateFormatting(locale);
    }
    return DateFormat(pattern, locale).format(this);
  }

  int getDaysInMonth() {
    if (month == DateTime.february) {
      final bool isLeapYear =
          (year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0);
      return isLeapYear ? 29 : 28;
    }
    const List<int> daysInMonth = <int>[
      31,
      -1,
      31,
      30,
      31,
      30,
      31,
      31,
      30,
      31,
      30,
      31
    ];
    return daysInMonth[month - 1];
  }

  getDateDiffSec({DateTime? nextDate}) {
    DateTime now = DateTime.now();
    // int minutes =
    //     (nextDate?.hour ?? now.hour * 60 + (nextDate?.minute ?? now.minute)) -
    //         (hour * 60 + minute);
    var diff = now.difference(this);
    if (nextDate != null) diff = nextDate.difference(this);

    // log('===== ${diff.inHours}.${minutes}');
    return {
      'minutes': diff.inMinutes,
      'seconds': diff.inSeconds,
      'hours': '${diff.inHours}'
    };
  }

  String getDate() {
    return '$this'.split(' ')[0];
  }

  
  String getTime() {
    return '$this'.split(' ')[1];
  }


  int toSeconds() {
    return (hour * 3600) + (minute * 60) + second;
  }
}

extension DateTimeFormat on String {
  DateTime toDate() {
    return DateTime.parse(this);
  }

  TimeOfDay timeOfDayFromString() {
    int hh = 0;
    int h = 0;
    var time = split(' ')[0];
    h = int.parse(time.split(":")[0]);
    if (endsWith('PM')) {
      hh = 12;
    }
    if (endsWith('AM')) {
      if (h >= 12) h -= 12;
    }
    return TimeOfDay(
      hour: hh + h % 24,
      minute: int.parse(time.split(":")[1]) % 60,
    );
  }

  String format([
    String pattern = dateTimeFormatPattern,
    String? locale,
  ]) {
    if (locale != null && locale.isNotEmpty) {
      initializeDateFormatting(locale);
    }
    return DateFormat(pattern, locale).format(DateTime.parse(this));
  }

  DateTime toValidDate({required String patter, hours, minutes, seconds}) {
    var dt = split(patter);
    return DateTime(int.parse(dt[2]), int.parse(dt[1]), int.parse(dt[0]),
        hours ?? 0, minutes ?? 0, seconds ?? 0);
  }

  int getDaysInMonth(int year, int month) {
    if (month == DateTime.february) {
      final bool isLeapYear =
          (year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0);
      return isLeapYear ? 29 : 28;
    }
    const List<int> daysInMonth = <int>[
      31,
      -1,
      31,
      30,
      31,
      30,
      31,
      31,
      30,
      31,
      30,
      31
    ];
    return daysInMonth[month - 1];
  }

  getDateDiffSec() {
    DateTime parsedDate = DateTime.parse(this);
    DateTime now = DateTime.now();
    int minutes = (now.hour * 60 + now.minute) -
        (parsedDate.hour * 60 + parsedDate.minute);
    var diff = now.difference(parsedDate);
    return {
      'minutes': minutes,
      'seconds': diff.inSeconds % 60,
      'hours': '${diff.inHours}.${diff.inSeconds % 60}',
    };
  }

  String getTime() {
    // DateTime time = DateTime.parse(this);
    var hour = toDate().hour;
    var min = toDate().minute;
    var sec = toDate().second;
    var period = hour < 12 ? 'AM' : 'PM';
    hour = hour < 12 ? hour : hour - 12;
    return '$hour:$min:$sec $period';
  }

  int toSeconds() {
    // DateTime time = DateTime.parse(this);
    var time = split(' ');
    var hh = time[1] == 'PM' ? 12 : 0;
    var hour = ((int.parse(time[0].split(':')[0]) + hh) * 3600);
    var min = (int.parse(time[0].split(':')[1]) * 60);
    // var period = hour < 12 ? 'AM' : 'PM';
    // hour = hour < 12 ? hour : hour - 12;
    return (hour + min);
  }
}

extension TimeOfDayFormmater on TimeOfDay {
  getTime() {
    String time = toString().replaceAll('TimeOfDay(', '').replaceAll(')', '');
    time =
        '${int.parse(time.split(':')[0]) < 12 ? int.parse(time.split(':')[0]) : int.parse(time.split(':')[0]) - 12}:${int.parse(time.split(':')[1])} ${int.parse(time.split(':')[0]) < 12 ? 'AM' : 'PM'}';
    return time;
  }
}

int getDaysInMonth(int year, int month) {
  if (month == DateTime.february) {
    final bool isLeapYear =
        (year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0);
    return isLeapYear ? 29 : 28;
  }
  const List<int> daysInMonth = <int>[
    31,
    -1,
    31,
    30,
    31,
    30,
    31,
    31,
    30,
    31,
    30,
    31
  ];
  return daysInMonth[month - 1];
}

List<String> months = [
  'Jan',
  'Feb',
  'Mar',
  'Apr',
  'May',
  'Jun',
  'Jul',
  'Aug',
  'Sep',
  'Oct',
  'Nov',
  'Dec',
];

List<String> days = [
  'Mon',
  'Tue',
  'Wed',
  'Thu',
  'Fri',
  'Sat',
  'Sun',
];

final List<Map<String, dynamic>> fullMonths = [
  {'month': 'JANUARY', 'days': 31},
  {'month': 'FEBRUARY', 'days': getDaysInMonth(DateTime.now().year, 2)},
  {'month': 'MARCH', 'days': 31},
  {'month': 'APRIL', 'days': 30},
  {'month': 'MAY', 'days': 31},
  {'month': 'JUNE', 'days': 30},
  {'month': 'JULY', 'days': 31},
  {'month': 'AUGUST', 'days': 31},
  {'month': 'SEPTEMBER', 'days': 30},
  {'month': 'OCTOBER', 'days': 31},
  {'month': 'NOVEMBER', 'days': 30},
  {'month': 'DECEMBER', 'days': 31},
];

double getTimeDifferent({required TimeOfDay start, required TimeOfDay end}) {
  // var startSplit = start.split(':');
  // var sHH = (startSplit[1].split(' ')[1] == 'AM') ? 0 : 12;

  // var sh = int.parse(startSplit[0]) + sHH;
  // var sm = startSplit[1].split(' ')[0];

  // log("double.parse('$sh.$sm') = ${double.parse('$sh.$sm')}");
  // log("double.parse('$eh.$em') = ${double.parse('$eh.$em')}");
  // log("double.parse('$sh.$sm') - double.parse('$eh.$em') = ${double.parse('$sh.$sm') - double.parse('$eh.$em')}");
  log('startTime = $start');
  log('endTime = $end');
  return (double.parse('${end.hour}.${end.minute}') -
      double.parse('${start.hour}.${start.minute}'));
}

toTimeOfDay() {}
