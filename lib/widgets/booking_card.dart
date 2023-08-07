import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/widgets.dart';

class BookingCard extends StatelessWidget {
  final Future<String> Function(String value) onStartPressed;
  final Future<String> Function(String value) onEndPressed;
  final Function()? onDelete;
  final DateTime date;

  BookingCard(
      {Key? key,
      required this.onStartPressed,
      required this.onEndPressed,
      this.onDelete,
      required this.date})
      : super(key: key);
  RxString start = '__ __ __'.obs;
  RxString end = '__ __ __'.obs;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(left: 8, right: 8),
      margin: getMargin(top: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: ColorConstant.pinkA100,
            ),
            padding: getPadding(left: 8, right: 8, bottom: 8),
            width: 50,
            height: 50,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Text(
                  '${date.day < 10 ? '0${date.day}' : date.day}',
                  style: AppStyle.txtPoppinsRegular24.copyWith(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                Positioned(
                  top: 28,
                  child: Text(
                    '${months[date.month - 1].toUpperCase()}',
                    style: AppStyle.txtPoppinsRegular24.copyWith(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          // const SizedBox(
          //   width: 8,
          // ),
          Expanded(
            child: Container(
              height: 60,
              padding: getPadding(left: 8, right: 8, top: 4, bottom: 4),
              margin: getMargin(left: 8),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () async {
                      start.value = (await onStartPressed(start.value));
                    },
                    child: Row(
                      children: [
                        Text(
                          'Start',
                          style: AppStyle.txtPoppinsRegular24
                              .copyWith(color: Colors.black, fontSize: 14),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.av_timer_rounded,
                          size: 17,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Obx(() => Text(
                              start.value,
                              style: AppStyle.txtPoppinsRegular24
                                  .copyWith(color: Colors.black, fontSize: 14),
                            )),
                      ],
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () async {
                      end.value = (await onStartPressed(end.value));
                    },
                    child: Row(
                      children: [
                        Text(
                          'End',
                          style: AppStyle.txtPoppinsRegular24
                              .copyWith(color: Colors.black, fontSize: 14),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.av_timer_rounded,
                          size: 17,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Obx(() => Text(
                              end.value,
                              style: AppStyle.txtPoppinsRegular24
                                  .copyWith(color: Colors.black, fontSize: 14),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // const Spacer(),
          Container(
            width: 40,
            padding: getPadding(bottom: 24),
            // height: 20,
            // margin: getMargin(bottom: 40, right: 8),
            child: IconButton(
              onPressed: onDelete,
              // splashRadius: 12,
              // padding: getPadding(all: 0),
              style: IconButton.styleFrom(
                  backgroundColor: Colors.green, alignment: Alignment.topRight),
              icon: Icon(
                Icons.close_rounded,
                color: Colors.black38,
              ),
            ),
          )
        ],
      ),
    );
  }
}
