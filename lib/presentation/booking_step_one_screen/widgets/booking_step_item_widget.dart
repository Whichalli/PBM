
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';

// ignore: must_be_immutable
class BookingStepItemWidget extends StatelessWidget {
  RxString value;
  DateTime date;
  RxBool isThisMonthDay;
  List<String> bookedDate;
  BookingStepItemWidget({
    required this.value,
    required this.bookedDate,
    required this.isThisMonthDay,
    required this.date,
    Key? key,
  }) : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    var d = DateTime(now.year, now.month, now.day);
    return SizedBox(
      // height: getVerticalSize(
      //   100,
      // ),
      // width: getHorizontalSize(
      //   100,
      // ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgVuesaxlinearadd,
            // height: getVerticalSize(100),
            // width: getHorizontalSize(
            //   100,
            // ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Obx(() => Text(
                  value.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtOpenSansRomanSemiBold15Gray600.copyWith(
                      color: (isThisMonthDay.value && now.compareTo(date) < 0 ||
                                  (d.day == date.day &&
                                      d.month == date.month)) &&
                              !bookedDate.contains('$date')
                          ? Colors.black87
                          : Colors.grey),
                )),
          ),
        ],
      ),
    );
  }
}
