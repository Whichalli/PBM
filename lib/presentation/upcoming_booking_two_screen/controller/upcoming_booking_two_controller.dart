import 'package:hive/hive.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';
import 'package:pbm_app/domain/firebase/firebase.dart';
import 'package:pbm_app/presentation/upcoming_booking_two_screen/models/upcoming_booking_two_model.dart';

/// A controller class for the UpcomingBookingTwoScreen.
///
/// This class manages the state of the UpcomingBookingTwoScreen, including the
/// current upcomingBookingTwoModelObj
class UpcomingBookingTwoController extends GetxController {
  Rx<UpcomingBookingTwoModel> upcomingBookingTwoModelObj =
      UpcomingBookingTwoModel().obs;

  bool isCash = false;
  bool isPayPal = false;
  bool isMasterCard = false;
  bool isApplePay = false;
  bool isVisa = false;
  int price = 0;

  @override
  void onInit() {
    loadBookingData();
    super.onInit();
  }

  onTapCash() {
    isCash = true;
    isMasterCard = false;
    isApplePay = false;
    isPayPal = false;
    isVisa = false;
    update();
  }

  onTapApple() {
    isCash = false;
    isMasterCard = false;
    isApplePay = true;
    isPayPal = false;
    isVisa = false;
    update();
  }

  onTapPayPal() {
    isCash = false;
    isMasterCard = false;
    isApplePay = false;
    isVisa = false;
    isPayPal = true;
    update();
  }

  onTapMasterCard() {
    isCash = false;
    isMasterCard = true;
    isApplePay = false;
    isPayPal = false;
    isVisa = false;
    update();
  }

  onTapVisaCard() {
    isCash = false;
    isMasterCard = false;
    isApplePay = false;
    isPayPal = false;
    isVisa = true;
    update();
  }

  loadBookingData() {
    price = Hive.box('price').get('total');
  }

  bool loading = false;
  onTapPay() async {
    // log('booking ${json.encode(Hive.box('booking').get('data'))}');
    var employeeId = Hive.box('booking').get('data')['employeeId'];
    var chatId = '$employeeId-${Authentication.getCurrentUserId()}';
    Map<String, dynamic> bookingData = Hive.box('booking').get('data');
    bookingData.putIfAbsent('price', () => price);
    await Database.write(data: bookingData, table: 'bookings');

    var exist = (await Database.read(userId: 'chat', table: chatId)).exists;

    if (!exist) {
      await Database.write(
          userId: chatId,
          data: {
            'messages': [],
            'employeeId': employeeId,
            'parentId': Authentication.getCurrentUserId(),
            'senderId': Authentication.getCurrentUserId(),
            'isNewBooking': true,
            'unread': 1,
            'lastMessage': 'New Booking',
            'isDocument': false,
            'lastSentTime': DateTime.now(),
          },
          table: 'chat');
    }

    Get.offAllNamed(
      AppRoutes.upcomingBookingScreen,
    );
  }
}
