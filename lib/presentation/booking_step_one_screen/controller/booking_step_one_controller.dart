import 'dart:developer';
import 'dart:math' as Math;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/marked_date.dart';
import 'package:flutter_calendar_carousel/classes/multiple_marked_dates.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/widgets/custom_button.dart';

import '../../../widgets/booking_card.dart';
import '../widgets/booking_step_item_widget.dart';

/// A controller class for the BookingStepOneScreen.
///
/// This class manages the state of the BookingStepOneScreen, including the
/// current bookingStepOneModelObj
class BookingStepOneController extends GetxController {
  final employeeId = '${Get.arguments['employeeId']}';

  RxList<MarkedDate> markedDate = <MarkedDate>[].obs;
  RxList<BookingCard> bookings = <BookingCard>[].obs;

  RxList<String> bookedDate = <String>[].obs;

  @override
  void onClose() {
    super.onClose();
    // radiobuttontextdispose();
  }

  RxBool boodedDateLoading = false.obs;

  @override
  void onInit() async {
    boodedDateLoading.value = true;
    var resp = await FirebaseFirestore.instance.collection('bookings').get();
    boodedDateLoading.value = false;

    for (var doc in resp.docs) {
      doc.data().forEach((key, value) {
        for (var element in resp.docs) {
          for (var e in element.data()['booking']) {
            log("employeeId = $employeeId e['employeeId'] = ${element['employeeId']}");
            if (element['employeeId'] == employeeId) {
              bookedDate.addIf(!bookedDate.contains('${e['date'].toDate()}'),
                  '${e['date'].toDate()}');
            }
          }
        }
      });
    }
    log('bookedDate = $bookedDate');
    super.onInit();
  }

  static final Widget _eventIcon = Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(1000)),
        border: Border.all(color: Colors.blue, width: 2.0)),
    child: const Icon(
      Icons.person,
      color: Colors.amber,
    ),
  );
  DateTime now = DateTime.now();
  // final Rx<DateTime> _currentDate = DateTime(DateTime.now().year, 1, 1).obs;
  // final Rx<DateTime> _currentDate2 = DateTime(DateTime.now().year, 1, 1).obs;
  final RxString _currentMonth =
      DateFormat.yMMM().format(DateTime(DateTime.now().year, 1, 1)).obs;
  final Rx<DateTime> targetDateTime = DateTime(
    DateTime.now().year,
    DateTime.now().month,
  ).obs;

  calendarCarouselNoHeader() => Obx(() => CalendarCarousel<Event>(
        todayBorderColor: Colors.transparent,
        pageScrollPhysics: const BouncingScrollPhysics(),
        dayPadding: .5,
        customWeekDayBuilder: (weekday, weekdayName) {
          return SizedBox(
            width: 40,
            height: 40,
            child: BookingStepItemWidget(
                bookedDate: [],
                date: DateTime.now(),
                value: weekdayName.obs,
                isThisMonthDay: false.obs),
          );
        },
        multipleMarkedDates: MultipleMarkedDates(markedDates: markedDate),
        customDayBuilder: (isSelectable,
                index,
                isSelectedDay,
                isToday,
                isPrevMonthDay,
                textStyle,
                isNextMonthDay,
                isThisMonthDay,
                day) =>
            BookingStepItemWidget(
                bookedDate: bookedDate,
                date: day,
                value: '${day.day}'.obs,
                isThisMonthDay: isThisMonthDay.obs),
        onDayPressed: boodedDateLoading.isTrue
            ? null
            : (date, events) {
                if (bookedDate.contains('$date')) return;
                var mark = MarkedDate(
                  color: ColorConstant.pinkA100,
                  textStyle: const TextStyle(color: Colors.white),
                  date: date,
                );

                if ((now.compareTo(date) < 0) ||
                    (date.month == now.month && now.day == date.day)) {
                  if (!markedDate.contains(mark)) {
                    markedDate.add(mark);
                  } else {
                    bookings.removeAt(markedDate.indexOf(mark));
                    markedDate.remove(mark);
                    update();
                  }
                  update();
                }
                for (var element in markedDate) {
                  var isEmpty =
                      bookings.where((e) => e.date == element.date).isEmpty;
                  // log('isPresent $isEmpty');
                  if (isEmpty) {
                    bookings.add(BookingCard(
                      date: element.date,
                      onStartPressed: (value) async {
                        value = (await timePicker()).format(Get.context!);
                        return value;
                      },
                      onEndPressed: (value) async {
                        value = (await timePicker()).format(Get.context!);
                        return value;
                      },
                      onDelete: () {
                        bookings.removeAt(markedDate.indexOf(element));
                        markedDate.remove(element);
                        update();
                      },
                    ));
                  }
                }
              },
        showOnlyCurrentMonthDate: true,
        showWeekDays: true,
        thisMonthDayBorderColor: Colors.grey,
        weekFormat: false,
        height: 420.0,
        todayButtonColor: markedDate.value.contains(MarkedDate(
          color: ColorConstant.pinkA100,
          textStyle: const TextStyle(color: Colors.white),
          date: DateTime(now.year, now.month, now.day),
        ))
            ? ColorConstant.pinkA100
            : Colors.transparent,
        targetDateTime:
            DateTime(targetDateTime.value.year, targetDateTime.value.month),
        customGridViewPhysics: const NeverScrollableScrollPhysics(),
        shouldShowTransform: false,
        markedDateCustomTextStyle: const TextStyle(
          fontSize: 18,
          color: Colors.blue,
        ),
        showHeader: false,
        onCalendarChanged: (DateTime date) {
          targetDateTime.value = date;
        },
      ));

  next(context) {
    if (targetDateTime.value.month <= 12) {
      targetDateTime.value =
          DateTime(targetDateTime.value.year, targetDateTime.value.month + 1);
      _currentMonth.value = DateFormat.MMMMd().format(targetDateTime.value);
    }
  }

  prev(context) {
    // dayCount.value = 0;
    // month.value = Math.max(1, --month.value);
    // var day = firstDayOffset(
    //     DateTime.now().year, month.value, MaterialLocalizations.of(context));
    if (targetDateTime.value.month > now.month) {
      targetDateTime.value =
          DateTime(targetDateTime.value.year, targetDateTime.value.month - 1);
      _currentMonth.value = DateFormat.MMMMd().format(targetDateTime.value);
    }
  }

  Future<TimeOfDay> timePicker() async {
    return (await showTimePicker(
        context: Get.context!, initialTime: TimeOfDay.now()))!;
  }

  /// Navigates to the bookingStepTwoScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the bookingStepTwoScreen.
  onTapNext() async {
    bool valid = bookings.isNotEmpty;
    String msg = 'Book a date and time to proceed';
    // log('arguments = ${Get.arguments}');
    String employeeId = Get.arguments['employeeId'];

    RxString dialogMessage =
        'Checking Schedule availabilty for this Pediatrician, this may take longer than expected'
            .obs;

    for (var element in bookings) {
      if (element.start.value == '__ __ __' ||
          element.end.value == '__ __ __') {
        valid = false;
        msg = 'Start and End time are required for each schedule';
      }
      if (valid) {
        if (element.start.value.toSeconds() >=
            (element.end.value.toSeconds())) {
          valid = false;
          msg = 'End time can\'t be less or same as Start time ';
        }
      }
    }

    RxList<BookingCard> alreadyBookedDateTime = RxList.empty();
    bool isBooked = false;

    if (valid) {
      Get.bottomSheet(
          Container(
            padding: const EdgeInsets.all(24),
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Obx(() => Text(
                      alreadyBookedDateTime.isEmpty
                          ? 'Please Wait'
                          : 'Waiting Time',
                      style: AppStyle.txtManropeExtraBold24,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                    )),
                const SizedBox(
                  height: 12,
                ),
                Obx(() => Text(
                      dialogMessage.value,
                      style: AppStyle.txtManropeBold14,
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                    )),
                const SizedBox(
                  height: 16,
                ),
                Obx(() => Expanded(
                      child: SizedBox(
                        child: alreadyBookedDateTime.isEmpty
                            ? CustomImageView(
                                imagePath: ImageConstant.sync,
                              )
                            : Column(
                                children: [
                                  SingleChildScrollView(
                                    physics: const BouncingScrollPhysics(),
                                    child: Obx(() => Column(
                                          children: alreadyBookedDateTime
                                              .map((element) => Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 8.0),
                                                    child: BookingCard(
                                                      date: element.date,
                                                      closeVisible: false,
                                                      startTime:
                                                          element.start.value,
                                                      endTime:
                                                          element.end.value,
                                                    ),
                                                  ))
                                              .toList(),
                                        )),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  const Spacer(),
                                  CustomButton(
                                    text: 'OK',
                                    height: 50,
                                    onTap: () {
                                      Get.back();
                                    },
                                  )
                                ],
                              ),
                      ),
                    ))
              ],
            ),
          ),
          isDismissible: false,
          enableDrag: false,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)));
      QuerySnapshot<Map<String, dynamic>> bookedTime = await FirebaseFirestore
          .instance
          .collection('bookings')
          .where('employeeId', isEqualTo: employeeId)
          .where('isActive', isEqualTo: true)
          .get();
      log('bookedTime = ${bookedTime.docs}');

      for (var newBookingsElemet in bookings) {
        for (var prevBookingElement in bookedTime.docs) {
          log('bookedTime element = ${prevBookingElement.data()}');
          for (var element in (prevBookingElement['booking'] as List)) {
            DateTime timestampToDate = (element['date'] as Timestamp).toDate();
            DateTime prevBookedDate = DateTime(timestampToDate.year,
                timestampToDate.month, timestampToDate.day);
            if (prevBookedDate ==
                DateTime(newBookingsElemet.date.year,
                    newBookingsElemet.date.month, newBookingsElemet.date.day)) {
              // if (newBookingsElemet.endTime!.toSeconds() <=
              //         '${element['endTime']}'.toSeconds() &&
              //     newBookingsElemet.startTime!.toSeconds() >=
              //         '${element['startTime']}'.toSeconds()) {
              //   isBooked = true;
              //   alreadyBookedDateTime.add(newBookingsElemet);
              // }

              if ((newBookingsElemet.start.value.toSeconds() >=
                          '${element['startTime']}'.toSeconds() &&
                      newBookingsElemet.start.value.toSeconds() <=
                          '${element['endTime']}'.toSeconds()) ||
                  (newBookingsElemet.end.value.toSeconds() >=
                          '${element['endTime']}'.toSeconds() &&
                      newBookingsElemet.end.value.toSeconds() <=
                          '${element['startTime']}'.toSeconds())) {
                alreadyBookedDateTime.add(newBookingsElemet);
                isBooked = true;
              }
            }
          }
        }
      }

      if (!isBooked) {
        Get.offNamed(AppRoutes.bookingStepTwoScreen,
            arguments: {'bookings': bookings, 'employeeId': employeeId});
      } else {
        dialogMessage.value =
            'The dates and time booking card displayed below show the invalid or already booked date and time of this Pediatrician';
      }
      return;
    }
    Fluttertoast.showToast(msg: msg);
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleft1() {
    Get.back();
  }
}
