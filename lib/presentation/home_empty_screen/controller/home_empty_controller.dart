import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
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
  List<Map<String, Map<String, ChartData>>> feedingLogsChart = [];

  RxBool hasRoutine = false.obs;
  List<ChartData> sleepData = [];
  List<ChartData> activityData = [];
  List<ChartData> pumpingData = [];
  List<ChartData> feedingData = [];
  List<ChartData> bottleData = [];
  List<ChartData> diaperData = [];
  List<ChartData> breastData = [];
  List<ChartData> solidData = [];

  PageController? pageController;
  @override
  void onInit() async {
    pageController = PageController(initialPage: 0);
    tooltip = TooltipBehavior(enable: true);
    super.onInit();
  }

  String babyId = Get.arguments['babyId'];

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
    try {
      Stream<QuerySnapshot<Map<String, dynamic>>> resp;

      // log('babyId = $babyId');

      if (parent == 'diaper' || child == 'bottleLogs' || child == 'solidLogs') {
        resp = Database.readCollection(
                parentTable: parent,
                childTable: child,
                id: Get.arguments['babyId'])
            .snapshots();
      } else {
        resp = Database.readCollection(
                parentTable: parent,
                childTable: child,
                id: Get.arguments['babyId'])
            .where('counting', isEqualTo: false)
            .snapshots();
      }

      for (var e in (await resp.first).docs) {
        hasRoutine.value = true;

        DateTime stDt;
        DateTime endDt;
        ChartData chart;
        // log('bottleIf ${child == 'bottleLogs'}');
        if (child == 'bottleLogs') {
          // log('isBottle');
          stDt = e.data()['feedingDate'].toString().toDate();
          chart = ChartData(
              x: '${months[stDt.month - 1]} ${stDt.day}\n${e.data()['feedingTime']}',
              y: e.data()['waterLevel'],
              yValue: '${e.data()['waterLevel']} ML');
          bottleData.add(chart);
          // log('bottle ()()()()()');
        }
        if (parent == 'sleep' || parent == 'activity' || parent == 'pumping') {
          stDt = (e.data()['startDate'] as String).toDate();
          endDt = e.data()['endDate'].toString().toDate();

          var diff = (stDt.getDateDiffSec(nextDate: endDt));
          chart = ChartData(
              x:
                  '${months[stDt.month - 1]} ${stDt.day}\n${stDt.hour < 12 ? stDt.hour : stDt.hour - 12}:${stDt.minute < 10 ? '0${stDt.minute}' : stDt.minute} ${stDt.hour < 12 ? 'AM' : 'PM'}',
              y: double.parse('${diff['hours']}.${diff['minutes'] % 60}'),
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

        // log('ok........ !!!!!! $parent $child ${Get.arguments['babyId']}');
        if (parent == 'diaper') {
          // log('ok........');

          DateTime date = (e.data()['date'] as Timestamp).toDate();
          chart = ChartData(
              x: date,
              y: double.parse(((e.data()['time'] as String).toSeconds() / 3600)
                  .toStringAsFixed(2)),
              yValue: 0);
          diaperData.add(chart);
        }

        log('ok........ !!!!!! $parent ${child == 'solidLogs'} ${Get.arguments['babyId']}');
        if (child == 'solidLogs') {
          log('solid ok........');

          DateTime date = (e.data()['feedingDate'] as String).toDate();
          chart = ChartData(
              x: date,
              y: double.parse(
                  ((e.data()['feedingTime'] as String).toSeconds() / 3600)
                      .toStringAsFixed(2)),
              yValue: 0);
          solidData.add(chart);
        }
      }
      // log('feeding = $bottleData');
      data = parent == 'sleep'
          ? sleepData
          : parent == 'activity'
              ? activityData
              : parent == 'pumping'
                  ? pumpingData
                  : child == 'bottleLogs'
                      ? bottleData
                      : child == 'diaperLogs'
                          ? diaperData
                          : child == 'solidLogs'
                              ? solidData
                              : [];
      yield data;
    } catch (_) {
      _.printError();
    }
  }

  RxBool hasFeeding = false.obs;

  Stream<List<Map<String, Map<String, ChartData>>>> fetchFeedingLogs(
      {child, required parent}) async* {
    log('babyId = $babyId');
    Stream.fromIterable([0, 1, 1]).forEach((i) {
      var resp = Database.readCollection(
              childTable: feedingLogs[i]['log'],
              parentTable: parent,
              id: babyId)
          .where('counting', isEqualTo: false)
          .snapshots();
      resp.forEach((element) {
        for (var e in element.docs) {
          Color color = Colors.white;
          hasRoutine.value = true;
          hasFeeding.value = true;

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
        }
      });
    });

    yield [];
  }

  Stream<List<Map<String, Map<String, ChartData>>>> fetchBreastLogs() async* {
    feedingLogsChart.clear();
    log('Beeast feeding');
    var resp = Database.readCollection(
            childTable: 'breastLogs',
            parentTable: 'feeding',
            id: Get.arguments['babyId'])
        .where('counting', isEqualTo: false)
        .snapshots();

    resp.forEach((element) {
      for (var e in element.docs) {
        Color color = Colors.white;
        hasRoutine.value = true;
        log('breast rightStartDate = ${e.data()['rightStartDate']} =========== leftStartDate = ${e.data()['leftStartDate']}');

        DateTime lStDt = e.data()['leftStartDate'].toString().toDate();
        DateTime rStDt = e.data()['rightStartDate'].toString().toDate();
        DateTime lEndDt = e.data()['leftEndDate'].toString().toDate();
        DateTime rEndDt = e.data()['rightEndDate'].toString().toDate();
        DateTime startDate = e.data()['startDate'].toString().toDate();

        var lDiff = (lStDt.getDateDiffSec(nextDate: lEndDt));
        var rDiff = (rStDt.getDateDiffSec(nextDate: rEndDt));
        var leftChart = ChartData(
            color: Colors.greenAccent,
            x: '${months[startDate.month - 1]} ${startDate.day}\n${startDate.hour < 12 ? startDate.hour : startDate.hour - 12}:${startDate.minute < 10 ? '0${startDate.minute}' : startDate.minute} ${startDate.hour < 12 ? 'AM' : 'PM'}',
            y: double.parse('${lStDt.hour}.${lStDt.minute}'),
            yValue: double.parse('${lEndDt.hour}.${lEndDt.minute}'));

        var rightChart = ChartData(
            color: Colors.blueAccent,
            // x: '${months[rStDt.month - 1]} ${rStDt.day}\n${rStDt.hour < 12 ? rStDt.hour : rStDt.hour - 12}:${rStDt.minute < 10 ? '0${rStDt.minute}' : rStDt.minute} ${rStDt.hour < 12 ? 'AM' : 'PM'}',
            x: '${months[startDate.month - 1]} ${startDate.day}\n${startDate.hour < 12 ? startDate.hour : startDate.hour - 12}:${startDate.minute < 10 ? '0${startDate.minute}' : startDate.minute} ${startDate.hour < 12 ? 'AM' : 'PM'}',
            y: double.parse('${rStDt.hour}.${rStDt.minute}'),
            yValue: double.parse('${rEndDt.hour}.${rEndDt.minute}'));

        log('####  left ${double.parse('${lStDt.hour}.${lStDt.minute}')} #### ${double.parse('${rStDt.hour}.${rStDt.minute}')}');

        feedingLogsChart.add({
          'left': {'data': leftChart},
          'right': {'data': rightChart},
        });
      }
    });
    yield feedingLogsChart;
  }

  List<BarSeries<ChartData, String>> chartSeries(
      {List<ChartData>? dataSource,
      List<Map<String, Map<String, ChartData>>>? children}) {
    if (children == null && dataSource != null) {
      return <BarSeries<ChartData, String>>[
        BarSeries<ChartData, String>(
          // width: 0.5,
          enableTooltip: true,
          color: Colors.white,
          borderRadius: const BorderRadius.only(
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
          dataLabelSettings: const DataLabelSettings(
              isVisible: true,
              alignment: ChartAlignment.near,
              showZeroValue: true,
              labelAlignment: ChartDataLabelAlignment.top,
              textStyle: TextStyle(fontSize: 11)),
        ),
      ];
    }

    return children!.map((e) {
      log('e = $e');
      int index = children.indexOf(e);
      log('children = $children');
      return BarSeries<ChartData, String>(
        enableTooltip: true,
        color: e['data']!['data']!.color,
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(8), bottomRight: Radius.circular(8)),
        dataSource: e['data']!.values.toList(),
        xValueMapper: (ChartData data, _) => data.x,
        yValueMapper: (ChartData data, _) => data.y,
        dataLabelMapper: (ChartData data, index) {
          return data.yValue.toString();
        },
        // yAxisName: 'Start',
        // xAxisName: 'End',
        isVisible: true,
        trackPadding: 0,

        // highValueMapper: (ChartData sales, _) => sales.yValue,
        dataLabelSettings: const DataLabelSettings(
            isVisible: true,
            alignment: ChartAlignment.near,
            showZeroValue: true,
            labelAlignment: ChartDataLabelAlignment.top,
            textStyle: TextStyle(fontSize: 11)),
      );
    }).toList();
    // }
  }

  List<ChartSeries<ChartData, String>> breastChatSeries(
      {List<Map<String, Map<String, ChartData>>>? children}) {
    List<ChartSeries<ChartData, String>> seriesList = [];

    for (final child in children!) {
      log('children = left = ${child['left']!['data']!.y}  right = ${child['right']!['data']!.y}');
      final leftSeries = RangeColumnSeries<ChartData, String>(
        dataSource: child['left']!.values.toList(),
        color: Colors.white,
        xValueMapper: (ChartData data, _) => data.x,
        highValueMapper: (ChartData data, _) => data.y,
        lowValueMapper: (ChartData data, _) => data.yValue,
        name: 'Left Breast',
        dataLabelSettings: const DataLabelSettings(
            isVisible: true,
            alignment: ChartAlignment.near,
            showZeroValue: true,
            labelAlignment: ChartDataLabelAlignment.top,
            textStyle: TextStyle(fontSize: 11)),
      );

      final rightSeries = RangeColumnSeries<ChartData, String>(
        dataSource: child['right']!.values.toList(),
        color: Colors.blue,
        xValueMapper: (ChartData data, _) => data.x,
        highValueMapper: (ChartData data, _) => data.y,
        lowValueMapper: (ChartData data, _) => data.yValue,
        name: 'Right Breast',
        dataLabelSettings: const DataLabelSettings(
            isVisible: true,
            alignment: ChartAlignment.near,
            showZeroValue: true,
            labelAlignment: ChartDataLabelAlignment.top,
            textStyle: TextStyle(fontSize: 11)),
      );

      seriesList.add(leftSeries);
      seriesList.add(rightSeries);
    }

    return seriesList;
  }

  List<BarSeries<ChartData, String>> bottleChartSeries(
      {required List<ChartData> dataSource}) {
    return <BarSeries<ChartData, String>>[
      BarSeries<ChartData, String>(
        width: 0.5,
        enableTooltip: true,
        color: Colors.white,
        borderRadius: const BorderRadius.only(
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
        dataLabelSettings: const DataLabelSettings(
            isVisible: true,
            alignment: ChartAlignment.near,
            showZeroValue: true,
            labelAlignment: ChartDataLabelAlignment.top,
            textStyle: TextStyle(fontSize: 11)),
      ),
    ];
  }

  /// Retursn the list of chart series
  /// which need to render on the default range column chart.
  List<RangeColumnSeries<ChartData, String>> rangeChartSeries(
      {required List<Map<String, Map<String, ChartData>>> dataSource}) {
    return data.map((e) {
      log('e = $e');
      int index = data.indexOf(e);
      // log('children = $data');
      return RangeColumnSeries<ChartData, String>(
        enableTooltip: true,
        color: e.color,
        borderRadius: const BorderRadius.only(
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
        dataLabelSettings: const DataLabelSettings(
            isVisible: true,
            alignment: ChartAlignment.near,
            showZeroValue: true,
            labelAlignment: ChartDataLabelAlignment.top,
            textStyle: TextStyle(fontSize: 11)),
      );
    }).toList();
  }

  List<ScatterSeries<ChartData, DateTime>> scatterChartSeries(
      {required List<ChartData> dataSource}) {
    return [
      ScatterSeries<ChartData, DateTime>(
          dataSource: diaperData,
          enableTooltip: true,
          legendIconType: LegendIconType.diamond,
          xAxisName: 'Date',
          yAxisName: 'Time',
          color: Colors.white,
          isVisible: true,
          dataLabelSettings: const DataLabelSettings(
              // isVisible: true,
              overflowMode: OverflowMode.trim,
              alignment: ChartAlignment.near,
              showZeroValue: true,
              labelAlignment: ChartDataLabelAlignment.top,
              textStyle: TextStyle(fontSize: 11)),
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
          markerSettings: const MarkerSettings(
              height: 15, width: 15, shape: DataMarkerType.circle))
    ];
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
