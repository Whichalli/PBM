import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/firebase.dart';
import 'package:pbm_app/presentation/home_empty_screen/models/home_empty_model.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

/// A controller class for the HomeEmptyScreen.
///
/// This class manages the state of the HomeEmptyScreen, including the
/// current homeEmptyModelObj
class HomeEmptyController extends GetxController {
  Rx<HomeEmptyModel> homeEmptyModelObj = HomeEmptyModel().obs;
  final double width = 7;

  late TooltipBehavior tooltip;

  List tables = [
    {'parent': 'sleep', 'child': 'sleepLogs'},
    {'parent': 'activity', 'child': 'activityLogs'},
    // {'parent': 'feeding', 'child': 'feedingLogs'},
    {'parent': 'pumping', 'child': 'pumpingLogs'},
  ];
  var titles = [
    'Sleep Logs',
    'Activity Logs',
    // 'Feeding Logs',
    'Pumping Logs',
  ];

  List<Map<String, dynamic>> feedingLogs = [
    {'log': 'breastLogs', 'data': <ChartData>[]},
    // {'log': 'bottleLogs', 'data': <ChartData>[]},
    {'log': 'solidLogs', 'data': <ChartData>[]},
  ];
  List<Map<String, List<ChartData>>> feedingLogsChart = [];

  RxBool hasRoutine = false.obs;
  List<ChartData> sleepData = [];
  List<ChartData> activityData = [];
  List<ChartData> pumpingData = [];
  List<ChartData> feedingData = [];
  List<ChartData> bottleData = [];
  List<ChartData> breastData = [];
  List<ChartData> solidData = [];

  PageController? pageController;
  @override
  void onInit() async {
    pageController = PageController(initialPage: 0);
    tooltip = TooltipBehavior(enable: true);
    super.onInit();
  }

  List tabs = [
    {'value': 'Bottle', 'active': true},
    {'value': 'Breast', 'active': false},
    {'value': 'Solid', 'active': false},
  ];

  swapPage(int pageIndex) {
    for (var e in tabs) {
      e['active'] = false;
    }
    tabs[pageIndex]['active'] = true;
    update();
    feedingLogsChart.clear();
    pageController?.animateToPage(pageIndex,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  List<ChartData> data = [];
  Stream<List<ChartData>> fetchData({required child, required parent}) async* {
    var resp = Database.readCollection(
            parentTable: parent, childTable: child, id: Get.arguments['babyId'])
        // .where('counting', isEqualTo: false)
        .snapshots();

    log('bottleResp = $resp');
    // log('data = ')

    (await resp.first).docs.forEach((e) {
      hasRoutine.value = true;

      // log('diff = $diff');
      DateTime stDt;
      DateTime endDt;
      ChartData chart;
      if (child == 'bottleLogs') {
        stDt = e.data()['feedingDate'].toString().toDate();
        chart = ChartData(
            x: '${months[stDt.month - 1]} ${stDt.day}\n${e.data()['feedingTime']}',
            y: e.data()['waterLevel'],
            // double.parse('${endDt.hour}.${endDt.minute}'),
            yValue: '${e.data()['waterLevel']} ML');
        bottleData.add(chart);
        log('bottle');
      }
      if (parent != 'feeding') {
        stDt = e.data()['startDate'].toString().toDate();
        endDt = e.data()['endDate'].toString().toDate();
        // log('stDt = $stDt endDt = $endDt');
        var diff = (stDt.getDateDiffSec(nextDate: endDt));
        chart = ChartData(
            x:
                '${months[stDt.month - 1]} ${stDt.day}\n${stDt.hour < 12 ? stDt.hour : stDt.hour - 12}:${stDt.minute < 10 ? '0${stDt.minute}' : stDt.minute} ${stDt.hour < 12 ? 'AM' : 'PM'}',
            y: double.parse('${diff['hours']}.${diff['minutes'] % 60}'),
            // double.parse('${endDt.hour}.${endDt.minute}'),
            yValue:
                '${months[endDt.month - 1]} ${endDt.day} ${endDt.hour < 12 ? endDt.hour : endDt.hour - 12}:${endDt.minute < 10 ? '0${endDt.minute}' : endDt.minute} ${endDt.hour < 12 ? 'AM' : 'PM'}');
        if (parent == 'sleep') {
          sleepData.add(chart);
        }
        if (parent == 'activity') {
          activityData.add(chart);
        }
        if (parent == 'pumping') {
          pumpingData.add(chart);
        }
      }
    });
    log('feeding = $bottleData');
    data = parent == 'sleep'
        ? sleepData
        : parent == 'activity'
            ? activityData
            : parent == 'pumping'
                ? pumpingData
                : child == 'bottleLogs'
                    ? bottleData
                    : [];
    yield data;
  }

  Stream<List<Map<String, Map<String, ChartData>>>> fetchFeedingLogs(
      {child, required parent}) async* {
    Stream.fromIterable([0, 1, 1]).forEach((i) {
      var resp = Database.readCollection(
              childTable: feedingLogs[i]['log'],
              parentTable: parent,
              id: Get.arguments['babyId'])
          .where('counting', isEqualTo: false)
          .snapshots();
      resp.forEach((element) {
        element.docs.forEach((e) {
          Color color = Colors.white;
          hasRoutine.value = true;
          // if (feedingLogs[i]['log'] == 'breastLogs')
          //   color = ColorConstant.pink400;

          // if (feedingLogs[i]['log'] == 'bootleLogs') {
          //   color = Color.fromARGB(255, 255, 244, 237);
          //   if (e.data()['isFormula']) color = Colors.blueGrey;
          // }

          // if (feedingLogs[i]['log'] == 'solidLogs')
          //   color = const Color.fromARGB(255, 224, 84, 33);

          log('resp data = ${e.data()}');

          DateTime stDt = e.data()['startDate'].toString().toDate();
          DateTime endDt = e.data()['endDate'].toString().toDate();
          var diff = (stDt.getDateDiffSec(nextDate: endDt));
          var chart = ChartData(
              color: color,
              x:
                  '${months[stDt.month - 1]} ${stDt.day}\n${stDt.hour < 12 ? stDt.hour : stDt.hour - 12}:${stDt.minute < 10 ? '0${stDt.minute}' : stDt.minute} ${stDt.hour < 12 ? 'AM' : 'PM'}',
              y: double.parse('${stDt.hour}.${stDt.minute}'),
              yValue: e.data().containsKey('isRight') &&
                      e.data().containsKey('isLeft')
                  ? double.parse('${endDt.hour}.${endDt.minute}')
                  : '$endDt');

          // if (feedingLogs[i]['log'] == 'breastLogs') {
          //   color = ColorConstant.pink400;
          //   if (!e.data()['isRight'])
          //     feedingLogsChart.add({
          //       'right': {'data': chart}
          //     });
          //   if (!e.data()['isLeft'])
          //     feedingLogsChart.add({
          //       'left': {'data': chart}
          //     });
          // } else
          //   feedingLogsChart.add({
          //     'data': {'data': chart}
          //   });
        });
      });
    });
    yield [];
  }

  Stream<List<Map<String, Map<String, ChartData>>>> fetchBreastLogs() async* {
    feedingLogsChart.clear();
    var resp = Database.readCollection(
            childTable: 'breastLogs',
            parentTable: 'feeding',
            id: Get.arguments['babyId'])
        .where('counting', isEqualTo: false)
        .snapshots();

    resp.forEach((element) {
      element.docs.forEach((e) {
        Color color = Colors.white;
        hasRoutine.value = true;
        log('breast resp data = ${e.data()}');

        DateTime lStDt = e.data()['startDate'].toString().toDate();
        DateTime rStDt = e.data()['startDate'].toString().toDate();
        DateTime lEndDt = e.data()['endDate'].toString().toDate();
        DateTime rEndDt = e.data()['endDate'].toString().toDate();

        var lDiff = (lStDt.getDateDiffSec(nextDate: lEndDt));
        var rDiff = (rStDt.getDateDiffSec(nextDate: rEndDt));
        var leftChart = ChartData(
            color: Colors.greenAccent,
            x: '${months[lStDt.month - 1]} ${lStDt.day}\n${lStDt.hour < 12 ? lStDt.hour : lStDt.hour - 12}:${lStDt.minute < 10 ? '0${lStDt.minute}' : lStDt.minute} ${lStDt.hour < 12 ? 'AM' : 'PM'}',
            y: double.parse('${lStDt.hour}.${lStDt.minute}'),
            yValue: double.parse('${lEndDt.hour}.${lEndDt.minute}'));

        var rightChart = ChartData(
            color: Colors.blueAccent,
            x: '${months[rStDt.month - 1]} ${rStDt.day}\n${rStDt.hour < 12 ? rStDt.hour : rStDt.hour - 12}:${rStDt.minute < 10 ? '0${rStDt.minute}' : rStDt.minute} ${rStDt.hour < 12 ? 'AM' : 'PM'}',
            y: double.parse('${rStDt.hour}.${rStDt.minute}'),
            yValue: double.parse('${rEndDt.hour}.${rEndDt.minute}'));

        // color = ColorConstant.pink400;
        feedingLogsChart.add({
          'data': [leftChart, rightChart]
        });
        // feedingLogsChart.add({
        //   'left': {'data': leftChart}
        // });
      });
    });
  }

  List<BarSeries<ChartData, String>> chartSeries(
      {List<ChartData>? dataSource,
      List<Map<String, Map<String, ChartData>>>? children}) {
    if (children == null && dataSource != null)
      return <BarSeries<ChartData, String>>[
        BarSeries<ChartData, String>(
          // width: 0.5,
          enableTooltip: true,
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(8), bottomRight: Radius.circular(8)),
          dataSource: dataSource,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
          dataLabelMapper: (ChartData data, index) {
            return data.yValue;
          },
          yAxisName: 'Start',
          xAxisName: 'End',
          isVisible: true,
          trackPadding: 0,
          // highValueMapper: (ChartData sales, _) => sales.yValue,
          dataLabelSettings: DataLabelSettings(
              isVisible: true,
              alignment: ChartAlignment.near,
              showZeroValue: true,
              labelAlignment: ChartDataLabelAlignment.top,
              textStyle: const TextStyle(fontSize: 11)),
        ),
      ];

    return children!.map((e) {
      log('e = $e');
      int index = children.indexOf(e);
      log('children = $children');
      return BarSeries<ChartData, String>(
        enableTooltip: true,
        color: e['data']!['data']!.color,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(8), bottomRight: Radius.circular(8)),
        dataSource: e['data']!.values.toList(),
        xValueMapper: (ChartData data, _) => data.x,
        yValueMapper: (ChartData data, _) => data.y,
        dataLabelMapper: (ChartData data, index) {
          return data.yValue;
        },
        // yAxisName: 'Start',
        // xAxisName: 'End',
        isVisible: true,
        trackPadding: 0,

        // highValueMapper: (ChartData sales, _) => sales.yValue,
        dataLabelSettings: DataLabelSettings(
            isVisible: true,
            alignment: ChartAlignment.near,
            showZeroValue: true,
            labelAlignment: ChartDataLabelAlignment.top,
            textStyle: const TextStyle(fontSize: 11)),
      );
    }).toList();
    // }
  }

  List<BarSeries<ChartData, String>> bottleChartSeries(
      {required List<ChartData> dataSource}) {
    return <BarSeries<ChartData, String>>[
      BarSeries<ChartData, String>(
        width: 0.5,
        enableTooltip: true,
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(8), bottomRight: Radius.circular(8)),
        dataSource: dataSource,
        xValueMapper: (ChartData data, _) => data.x,
        yValueMapper: (ChartData data, _) => data.y,
        dataLabelMapper: (ChartData data, index) {
          return data.yValue;
        },
        yAxisName: 'Start',
        xAxisName: 'End',
        isVisible: true,
        trackPadding: 0,
        // highValueMapper: (ChartData sales, _) => sales.yValue,
        dataLabelSettings: DataLabelSettings(
            isVisible: true,
            alignment: ChartAlignment.near,
            showZeroValue: true,
            labelAlignment: ChartDataLabelAlignment.top,
            textStyle: const TextStyle(fontSize: 11)),
      ),
    ];
  }

  // List<RangeColumnSeries<ChartData, String>> rangeChartSeries(
  //     {required List<Map<String, Map<String, ChartData>>> dataSource}) {
  //   return <RangeColumnSeries<ChartData, String>>[
  //     RangeColumnSeries<ChartData, String>(
  //       width: 0.5,
  //       enableTooltip: true,
  //       color: Colors.white,
  //       borderRadius: BorderRadius.only(
  //           topRight: Radius.circular(8), bottomRight: Radius.circular(8)),
  //       dataSource: dataSource,
  //       xValueMapper: (ChartData data, _) => data.x,
  //       highValueMapper: (ChartData data, _) => data.y,
  //       lowValueMapper: (ChartData data, _) => data.yValue,
  //       dataLabelMapper: (ChartData data, index) {
  //         return data.yValue;
  //       },
  //       yAxisName: 'Start',
  //       xAxisName: 'End',
  //       isVisible: true,
  //       trackPadding: 0,
  //       // highValueMapper: (ChartData sales, _) => sales.yValue,
  //       dataLabelSettings: DataLabelSettings(
  //           isVisible: true,
  //           alignment: ChartAlignment.near,
  //           showZeroValue: true,
  //           labelAlignment: ChartDataLabelAlignment.top,
  //           textStyle: const TextStyle(fontSize: 11)),
  //     ),
  //   ];
  // }

  /// Retursn the list of chart series
  /// which need to render on the default range column chart.
  List<RangeColumnSeries<ChartData, String>> rangeChartSeries(
      {required List<Map<String, Map<String, ChartData>>> dataSource}) {
    return data.map((e) {
      log('e = $e');
      int index = data.indexOf(e);
      log('children = $data');
      return RangeColumnSeries<ChartData, String>(
        enableTooltip: true,
        color: e.color,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(8), bottomRight: Radius.circular(8)),
        dataSource: data,
        xValueMapper: (ChartData data, _) => data.x,
        lowValueMapper: (ChartData data, _) => data.y,
        highValueMapper: (ChartData data, _) => data.yValue,
        dataLabelMapper: (ChartData data, index) {
          // log('value = ${data.yValue}');
          return data.yValue;
        },
        // yAxisName: 'Start',
        // xAxisName: 'End',
        isVisible: true,
        trackPadding: 0,

        // highValueMapper: (ChartData sales, _) => sales.yValue,
        dataLabelSettings: DataLabelSettings(
            isVisible: true,
            alignment: ChartAlignment.near,
            showZeroValue: true,
            labelAlignment: ChartDataLabelAlignment.top,
            textStyle: const TextStyle(fontSize: 11)),
      );
    }).toList();

    // return <RangeColumnSeries<ChartData, String>>[
    //   RangeColumnSeries<ChartData, String>(
    //     dataSource: dataSource,
    //     xValueMapper: (ChartData sales, _) => sales.x as String,
    //     lowValueMapper: (ChartData sales, _) => sales.y,
    //     highValueMapper: (ChartData sales, _) => sales.yValue,
    //     dataLabelSettings: DataLabelSettings(
    //         isVisible: true,
    //         labelAlignment: ChartDataLabelAlignment.top,
    //         textStyle: const TextStyle(fontSize: 10)),
    //   )
    // ];
  }
}

class ChartData {
  ChartData(
      {required this.x, required this.yValue, required this.y, this.color});

  final x;
  final yValue;
  final y;
  final Color? color;
}
