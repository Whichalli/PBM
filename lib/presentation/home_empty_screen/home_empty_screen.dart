import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:pbm_app/widgets/widgets.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

import '../../widgets/custom_button.dart';
import 'controller/home_empty_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/custom_floating_button.dart';

class HomeEmptyScreen extends GetWidget<HomeEmptyController> {
  const HomeEmptyScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorConstant.gray100,
          automaticallyImplyLeading: false,
          title: Text(
            "Routines Logs".tr,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.black,
              )),
        ),
        backgroundColor: ColorConstant.gray200,
        body: GetBuilder<HomeEmptyController>(builder: ((controller) {
          return SizedBox(
              width: getHorizontalSize(411),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: getPadding(left: 16, right: 16, bottom: 16),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // const SizedBox(
                      //   height: 32,
                      // ),
                      ///Diaper Log Chart
                      StreamBuilder<List<ChartData>>(
                          stream: controller.fetchData(
                            child: 'diaperLogs',
                            parent: 'diaper',
                          ),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              log('!!!!!!!!!!!!!!!! diaper = ${snapshot.data}');
                              if (snapshot.data != null) {
                                if (snapshot.data!.isNotEmpty) {
                                  // log('table = $table snapshot.hasData ${snapshot.hasData} ${snapshot.data![0].y}...${snapshot.data![0].yValue}');
                                  return Padding(
                                    padding: getPadding(top: 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Divider(
                                          color: ColorConstant.pinkA100,
                                        ),
                                        const Text(
                                          'Diaper Logs',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Poppins'),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        SingleChildScrollView(
                                          child: Container(
                                              // height: 240,
                                              // width: 500,
                                              padding: getPadding(top: 12),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color:
                                                      ColorConstant.pinkA100),
                                              child: SingleChildScrollView(
                                                physics:
                                                    const BouncingScrollPhysics(),
                                                child: SfCartesianChart(
                                                  // plotAreaBorderWidth: 0,
                                                  primaryXAxis: DateTimeAxis(
                                                      title: AxisTitle(
                                                          text: 'Date')),
                                                  primaryYAxis: NumericAxis(
                                                      // visibleMaximum: 24,
                                                      // visibleMinimum: 1,
                                                      // minimum: 1,
                                                      // maximum: 24,
                                                      title: AxisTitle(
                                                          text:
                                                              'Time (24 hours)')),

                                                  onTooltipRender:
                                                      (tooltipArgs) {
                                                    tooltipArgs.header =
                                                        'Diaper';
                                                    var hh = double.parse(
                                                                tooltipArgs
                                                                        .text!
                                                                        .split(
                                                                            ':')[
                                                                    1]) <
                                                            12
                                                        ? 'AM'
                                                        : 'PM';
                                                    tooltipArgs.text =
                                                        '${tooltipArgs.text!.replaceAll('.', ':')} $hh';
                                                  },
                                                  series: controller
                                                      .scatterChartSeries(
                                                          dataSource:
                                                              snapshot.data!),
                                                  tooltipBehavior:
                                                      TooltipBehavior(
                                                          enable: true),
                                                ),
                                              )),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                              }
                            }
                            return const SizedBox();
                          }),

                      StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                          stream: FirebaseFirestore.instance
                              .collection('feeding')
                              .snapshots(),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              log('snap = ${snapshot.data}');
                              if (snapshot.data!.docs.isEmpty) {
                                return const SizedBox();
                              }
                            }
                            return Container(
                              padding: getPadding(all: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      color: ColorConstant.pinkA100)),
                              height: 310,
                              // width: getVerticalSize(411),
                              child: Column(
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: controller.tabs
                                          .map(
                                            (e) => Expanded(
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: CustomButton(
                                                        onTap: () {
                                                          controller.swapPage(
                                                              controller.tabs
                                                                  .indexOf(e));
                                                        },
                                                        margin:
                                                            getMargin(all: 1.5),
                                                        padding: ButtonPadding
                                                            .PaddingAll4,
                                                        text: e['value'],
                                                        shape: ButtonShape
                                                            .RoundedBorder8,
                                                        variant: e['active']
                                                            ? null
                                                            : ButtonVariant
                                                                .FillWhiteA700,
                                                        fontStyle: !e['active']
                                                            ? ButtonFontStyle
                                                                .OpenSansRomanSemiBold14Gray600
                                                            : null),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                          .toList()),
                                  SizedBox(
                                    height: 240,
                                    width: 411,
                                    child: PageView(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      controller: controller.pageController,
                                      children: [
                                        StreamBuilder<List<ChartData>>(
                                            stream: controller.fetchData(
                                              parent: 'feeding',
                                              child: 'bottleLogs',
                                            ),
                                            builder: (context, snapshot) {
                                              // var table = controller.tables[
                                              //         controller.titles.indexOf(e)]
                                              //     ['parent'];
                                              // log('snapshot.hasData ${snapshot.hasData} ${snapshot.data}');
                                              if (snapshot.hasData) {
                                                if (snapshot.data != null) {
                                                  if (snapshot
                                                      .data!.isNotEmpty) {
                                                    // log('table = $table snapshot.hasData ${snapshot.hasData} ${snapshot.data![0].y}...${snapshot.data![0].yValue}');
                                                    return Padding(
                                                      padding:
                                                          getPadding(top: 0),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          SingleChildScrollView(
                                                            child: Container(
                                                                height: 240,
                                                                width: 500,
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            12),
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20),
                                                                    color: ColorConstant
                                                                        .pinkA100),
                                                                child:
                                                                    SfCartesianChart(
                                                                  plotAreaBorderWidth:
                                                                      0,
                                                                  primaryXAxis:
                                                                      CategoryAxis(
                                                                    majorGridLines:
                                                                        const MajorGridLines(
                                                                            width:
                                                                                0),
                                                                  ),
                                                                  primaryYAxis:
                                                                      NumericAxis(
                                                                          axisLine: const AxisLine(
                                                                              width:
                                                                                  0),
                                                                          interval:
                                                                              10,
                                                                          maximum:
                                                                              300,
                                                                          labelFormat:
                                                                              '{value}',
                                                                          majorTickLines:
                                                                              const MajorTickLines(
                                                                            size:
                                                                                0,
                                                                          )),
                                                                  series: controller.bottleChartSeries(
                                                                      dataSource:
                                                                          snapshot
                                                                              .data!),
                                                                  tooltipBehavior:
                                                                      TooltipBehavior(
                                                                          enable:
                                                                              true),
                                                                )),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  }
                                                }
                                              }
                                              return const SizedBox();
                                            }),
                                        // Breast Logs
                                        StreamBuilder<
                                                List<
                                                    Map<
                                                        String,
                                                        Map<String,
                                                            ChartData>>>>(
                                            stream:
                                                controller.fetchBreastLogs(),
                                            builder: (context, snapshot) {
                                              log('OPOLOP = ${controller.feedingLogsChart}');

                                              // log('snapshot.hasData2 ${snapshot.hasData} ${snapshot.data}');
                                              if (snapshot.hasData) {
                                                if (snapshot.data != null) {
                                                  if (snapshot
                                                      .data!.isNotEmpty) {
                                                    // log('table = $table snapshot.hasData ${snapshot.hasData} ${snapshot.data![0].y}...${snapshot.data![0].yValue}');
                                                    return Padding(
                                                      padding:
                                                          getPadding(top: 0),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const SizedBox(
                                                            height: 8,
                                                          ),
                                                          SingleChildScrollView(
                                                            child: Container(
                                                                height: 230,
                                                                // width: 500,
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            12),
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20),
                                                                    color: ColorConstant
                                                                        .pinkA100),
                                                                child:
                                                                    SfCartesianChart(
                                                                  plotAreaBorderWidth:
                                                                      0,
                                                                  primaryXAxis:
                                                                      CategoryAxis(
                                                                    majorGridLines:
                                                                        const MajorGridLines(
                                                                            width:
                                                                                0),
                                                                  ),
                                                                  primaryYAxis:
                                                                      NumericAxis(
                                                                          axisLine: const AxisLine(
                                                                              width:
                                                                                  0),
                                                                          interval:
                                                                              1.0,
                                                                          labelFormat:
                                                                              '{value}',
                                                                          majorTickLines:
                                                                              const MajorTickLines(
                                                                            size:
                                                                                0,
                                                                          )),
                                                                  series: controller
                                                                      .chartSeries(
                                                                          children:
                                                                              snapshot.data),
                                                                  tooltipBehavior:
                                                                      TooltipBehavior(
                                                                          enable:
                                                                              true),
                                                                )),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  }
                                                }
                                              }
                                              return const SizedBox();
                                            }),

                                        // Solid Logs
                                        StreamBuilder<
                                                List<
                                                    Map<
                                                        String,
                                                        Map<String,
                                                            ChartData>>>>(
                                            stream: controller.fetchFeedingLogs(
                                                parent: 'feeding'),
                                            builder: (context, snapshot) {
                                              // log('ola = ${controller.feedingLogsChart}');

                                              // log('snapshot.hasData3 ${snapshot.hasData} ${snapshot.data}');
                                              if (snapshot.hasData) {
                                                if (snapshot.data != null) {
                                                  if (snapshot
                                                      .data!.isNotEmpty) {
                                                    // log('table = $table snapshot.hasData ${snapshot.hasData} ${snapshot.data![0].y}...${snapshot.data![0].yValue}');
                                                    return Padding(
                                                      padding:
                                                          getPadding(top: 0),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const SizedBox(
                                                            height: 8,
                                                          ),
                                                          SingleChildScrollView(
                                                            child: Container(
                                                                height: 230,
                                                                // width: 500,
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            12),
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20),
                                                                    color: ColorConstant
                                                                        .pinkA100),
                                                                child:
                                                                    SfCartesianChart(
                                                                  plotAreaBorderWidth:
                                                                      0,
                                                                  primaryXAxis:
                                                                      CategoryAxis(
                                                                    majorGridLines:
                                                                        const MajorGridLines(
                                                                            width:
                                                                                0),
                                                                  ),
                                                                  primaryYAxis:
                                                                      DateTimeAxis(
                                                                          axisLine: const AxisLine(
                                                                              width:
                                                                                  0),
                                                                          interval:
                                                                              1.0,
                                                                          labelFormat:
                                                                              '{value}',
                                                                          majorTickLines:
                                                                              const MajorTickLines(
                                                                            size:
                                                                                0,
                                                                          )),
                                                                  series: controller.rangeChartSeries(
                                                                      dataSource:
                                                                          snapshot
                                                                              .data!),
                                                                  tooltipBehavior:
                                                                      TooltipBehavior(
                                                                          enable:
                                                                              true),
                                                                )),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  }
                                                }
                                              }
                                              return const SizedBox();
                                            }),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),

                      //Other Routpine logs
                      Column(
                        children: controller.titles.map((e) {
                          log('routine = $e');
                          return StreamBuilder<List<ChartData>>(
                              stream: controller.fetchData(
                                child: controller
                                        .tables[controller.titles.indexOf(e)]
                                    ['child'],
                                parent: controller
                                        .tables[controller.titles.indexOf(e)]
                                    ['parent'],
                              ),
                              builder: (context, snapshot) {
                                var table = controller
                                        .tables[controller.titles.indexOf(e)]
                                    ['parent'];
                                log('other snapshot.hasData ${snapshot.hasData} $e table = $table');
                                if (snapshot.hasData) {
                                  if (snapshot.data != null) {
                                    if (snapshot.data!.isNotEmpty) {
                                      log('table = $table snapshot.hasData ${snapshot.hasData} ${snapshot.data![0].y}...${snapshot.data![0].yValue}');
                                      return Padding(
                                        padding: getPadding(top: 0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Divider(
                                              color: ColorConstant.pinkA100,
                                            ),
                                            Text(
                                              e,
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Poppins'),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            SingleChildScrollView(
                                              child: Container(
                                                  height: 240,
                                                  // width: 500,
                                                  padding: getPadding(top: 12),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: ColorConstant
                                                          .pinkA100),
                                                  child: SfCartesianChart(
                                                    plotAreaBorderWidth: 0,
                                                    // primaryXAxis:
                                                    //     DateTimeAxis(),
                                                    primaryXAxis: CategoryAxis(
                                                      majorGridLines:
                                                          const MajorGridLines(
                                                              width: 0),
                                                    ),
                                                    primaryYAxis: NumericAxis(
                                                        axisLine:
                                                            const AxisLine(
                                                                width: 0),
                                                        interval: 1.0,
                                                        labelFormat: '{value}',
                                                        majorTickLines:
                                                            const MajorTickLines(
                                                          size: 0,
                                                        )),
                                                    series:
                                                        controller.chartSeries(
                                                            dataSource:
                                                                snapshot.data!),
                                                    tooltipBehavior:
                                                        TooltipBehavior(
                                                            enable: true),
                                                  )),
                                            ),
                                          ],
                                        ),
                                      );
                                    }
                                  }
                                }
                                return const SizedBox();
                              });
                        }).toList(),
                      ),

                      Obx(() => controller.hasRoutine.value
                          ? const SizedBox()
                          : Column(
                              children: [
                                Container(
                                    width: getHorizontalSize(327),
                                    margin:
                                        getMargin(left: 32, top: 40, right: 51),
                                    child: Text("msg_no_routines_tap".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtOpenSansLight24)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrow1,
                                    height: getVerticalSize(387),
                                    width: getHorizontalSize(251),
                                    margin: getMargin(
                                        left: 32, top: 72, bottom: 79)),
                              ],
                            ))
                    ]),
              ));
        })),
        floatingActionButton: CustomFloatingButton(
            height: 64,
            width: 64,
            onTap: () {
              onTapFloatingactionb();
            },
            child: CustomImageView(
                svgPath: ImageConstant.imgPlus,
                height: getVerticalSize(32.0),
                width: getHorizontalSize(32.0))));
  }

  /// Navigates to the homeScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the homeScreen.
  onTapFloatingactionb() {
    Get.toNamed(AppRoutes.homeScreen, arguments: Get.arguments);
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapImgArrowleft() {
    Get.back();
  }
}
